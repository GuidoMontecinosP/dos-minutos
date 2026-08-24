extends Control

const DialogosUnMinuto = preload("res://scripts/dialogos_un_minuto.gd")

@onready var nombre = $CajaDialogo/Nombre
@onready var texto = $CajaDialogo/Texto
@onready var reloj = $Reloj
@onready var timer = $Timer
@onready var timer_texto = $TimerTexto
@onready var timer_auto_avance = $TimerAutoAvance
@onready var chica = $Chica
@onready var contador_clicks = $ContadorClicks

const MENU_PATH := "res://menu.tscn"
const SPRITE_BASE := "res://sprites/"
const SPRITE_DEFAULT := "ella_neutral.png"
const TIEMPO_TOTAL := 120
const VENTANA_RESPUESTA := 5.0
const SAVE_PATH := "user://progreso_1minuto.save"

var dialogos_actuales: Array = []
var indice := 0
var fase_actual := "introduccion"
var tiempo_restante := TIEMPO_TOTAL
var minuto_iniciado := false
var juego_terminado := false

var escribiendo := false
var velocidad_texto := 0.045
var tiempo_entre_dialogos := 1.15

var cantidad_clicks := 0
var clicks_fuera_de_pregunta := 0
var respuestas_correctas := 0
var respuestas_ignoradas := 0
var ruta_final := ""

var pregunta_activa := ""
var pregunta_token := 0

var etapa_primer_minuto := 0
var etapa_segundo_minuto := 0
var quiebre_pendiente := false
var quiebre_iniciado := false
var cero_alcanzado := false
var esperando_evento := false

var spam_1_mostrado := false
var spam_2_mostrado := false
var spam_3_mostrado := false

var progreso := {
	"vio_zen": false,
	"vio_indecisa": false,
	"vio_romantica": false,
	"vio_impaciente": false,
	"vio_cobarde": false,
	"vio_reto_completado": false,
	"vio_perdedor": false,
	"partidas_jugadas": 0,
	"numeros_especiales_vistos": []
}

func _ready() -> void:
	progreso = SaveManager.cargar(SAVE_PATH, progreso)
	timer.wait_time = 1.0
	timer_texto.wait_time = velocidad_texto
	reloj.visible = false
	contador_clicks.visible = false
	dialogos_actuales = DialogosUnMinuto.intro_inicial()
	indice = 0
	mostrar_dialogo()

func mostrar_dialogo() -> void:
	if indice >= dialogos_actuales.size():
		terminar_bloque_dialogos()
		return
	var dialogo: Dictionary = dialogos_actuales[indice]
	nombre.text = dialogo.get("nombre", "Chica")
	texto.text = dialogo.get("texto", "")
	if dialogo.get("mostrar_reloj", false):
		reloj.visible = true
		actualizar_reloj()
	cambiar_expresion(dialogo.get("expresion", "neutral"))
	pregunta_activa = ""
	texto.visible_characters = 0
	escribiendo = true
	timer_auto_avance.stop()
	timer_texto.start()

func cambiar_expresion(expresion: String) -> void:
	var ruta := SPRITE_BASE + "ella_" + expresion + ".png"
	var ruta_default := SPRITE_BASE + SPRITE_DEFAULT
	if ResourceLoader.exists(ruta):
		chica.texture = load(ruta)
	elif ResourceLoader.exists(ruta_default):
		chica.texture = load(ruta_default)

func avanzar_dialogo() -> void:
	indice += 1
	if indice < dialogos_actuales.size():
		mostrar_dialogo()
	else:
		terminar_bloque_dialogos()

func cargar_bloque(bloque: Array) -> void:
	esperando_evento = false
	dialogos_actuales = bloque
	indice = 0
	mostrar_dialogo()

func terminar_bloque_dialogos() -> void:
	match fase_actual:
		"introduccion":
			iniciar_dos_minutos()
		"primer_minuto":
			avanzar_primer_minuto()
		"quiebre":
			elegir_ruta()
			fase_actual = "segundo_minuto"
			etapa_segundo_minuto = 0
			cargar_bloque(obtener_bloque_ruta())
		"segundo_minuto":
			avanzar_segundo_minuto()
		"final":
			finalizar_desaparicion()

func iniciar_dos_minutos() -> void:
	fase_actual = "primer_minuto"
	minuto_iniciado = true
	juego_terminado = false
	tiempo_restante = TIEMPO_TOTAL
	cantidad_clicks = 0
	clicks_fuera_de_pregunta = 0
	respuestas_correctas = 0
	respuestas_ignoradas = 0
	ruta_final = ""
	etapa_primer_minuto = 0
	etapa_segundo_minuto = 0
	quiebre_pendiente = false
	quiebre_iniciado = false
	cero_alcanzado = false
	esperando_evento = false
	spam_1_mostrado = false
	spam_2_mostrado = false
	spam_3_mostrado = false
	chica.modulate.a = 1.0
	reloj.visible = true
	actualizar_reloj()
	timer.start()
	cargar_bloque(DialogosUnMinuto.bloque_1())

func actualizar_reloj() -> void:
	@warning_ignore("integer_division")
	var minutos := tiempo_restante / 60
	var segundos := tiempo_restante % 60
	reloj.text = "%02d:%02d" % [minutos, segundos]

func avanzar_primer_minuto() -> void:
	if quiebre_pendiente:
		iniciar_dialogo_quiebre()
		return
	etapa_primer_minuto += 1
	match etapa_primer_minuto:
		1: cargar_bloque(DialogosUnMinuto.lore_contadores())
		2: cargar_bloque(DialogosUnMinuto.pregunta_gato())
		3: cargar_bloque(DialogosUnMinuto.pregunta_sigues_ahi_timed())
		4: cargar_bloque(DialogosUnMinuto.pregunta_exagera())
		5: cargar_bloque(DialogosUnMinuto.antes_del_quiebre())
		_:
			esperando_evento = true
			texto.visible_characters = -1

func registrar_click() -> void:
	if juego_terminado or not minuto_iniciado:
		return
	cantidad_clicks += 1
	if pregunta_activa == "":
		clicks_fuera_de_pregunta += 1
		comprobar_reaccion_spam()
		if fase_actual == "segundo_minuto" and ruta_final == "sobrecarga" and clicks_fuera_de_pregunta >= 20:
			activar_final_sobrecarga_prematuro()

func comprobar_reaccion_spam() -> void:
	if fase_actual != "primer_minuto":
		return
	var reaccion: Array = []
	if clicks_fuera_de_pregunta >= 12 and not spam_3_mostrado:
		spam_3_mostrado = true
		reaccion = DialogosUnMinuto.reaccion_spam_3()
	elif clicks_fuera_de_pregunta >= 8 and not spam_2_mostrado:
		spam_2_mostrado = true
		reaccion = DialogosUnMinuto.reaccion_spam_2()
	elif clicks_fuera_de_pregunta >= 4 and not spam_1_mostrado:
		spam_1_mostrado = true
		reaccion = DialogosUnMinuto.reaccion_spam_1()
	if not reaccion.is_empty():
		var posicion := indice + 1
		for linea in reaccion:
			dialogos_actuales.insert(posicion, linea)
			posicion += 1

func _on_avanzar_pressed() -> void:
	registrar_click()
	if pregunta_activa != "":
		responder_pregunta()

func iniciar_pregunta(tipo: String, duracion: float) -> void:
	pregunta_activa = tipo
	pregunta_token += 1
	var token_actual := pregunta_token
	get_tree().create_timer(duracion).timeout.connect(func(): responder_pregunta_por_tiempo(token_actual))

func responder_pregunta() -> void:
	if pregunta_activa == "":
		return
	var tipo := pregunta_activa
	pregunta_activa = ""
	pregunta_token += 1
	respuestas_correctas += 1
	insertar_despues(obtener_respuesta(tipo, true))

func responder_pregunta_por_tiempo(token: int) -> void:
	if token != pregunta_token or pregunta_activa == "":
		return
	var tipo := pregunta_activa
	pregunta_activa = ""
	pregunta_token += 1
	respuestas_ignoradas += 1
	insertar_despues(obtener_respuesta(tipo, false))

func obtener_respuesta(tipo: String, respondio: bool) -> Array:
	match tipo:
		"tutorial": return DialogosUnMinuto.respuesta_tutorial_si() if respondio else DialogosUnMinuto.respuesta_tutorial_no()
		"gato": return DialogosUnMinuto.respuesta_gato_si() if respondio else DialogosUnMinuto.respuesta_gato_no()
		"sigues_ahi": return DialogosUnMinuto.respuesta_sigues_ahi_si() if respondio else DialogosUnMinuto.respuesta_sigues_ahi_no()
		"exagera": return DialogosUnMinuto.respuesta_exagera_si() if respondio else DialogosUnMinuto.respuesta_exagera_no()
		"cambio": return DialogosUnMinuto.respuesta_cambio_si() if respondio else DialogosUnMinuto.respuesta_cambio_no()
		"segundo": return obtener_respuesta_segundo_minuto(respondio)
	return []

func obtener_respuesta_segundo_minuto(respondio: bool) -> Array:
	match ruta_final:
		"calma": return DialogosUnMinuto.respuesta_calma_segundo_si() if respondio else DialogosUnMinuto.respuesta_calma_segundo_no()
		"soledad": return DialogosUnMinuto.respuesta_soledad_segundo_si() if respondio else DialogosUnMinuto.respuesta_soledad_segundo_no()
		"sobrecarga": return DialogosUnMinuto.respuesta_sobrecarga_segundo_si() if respondio else DialogosUnMinuto.respuesta_sobrecarga_segundo_no()
		_: return DialogosUnMinuto.respuesta_incierta_segundo_si() if respondio else DialogosUnMinuto.respuesta_incierta_segundo_no()

func insertar_despues(reacciones: Array) -> void:
	var posicion := indice + 1
	for reaccion in reacciones:
		dialogos_actuales.insert(posicion, reaccion)
		posicion += 1
	avanzar_dialogo()

func _on_timer_texto_timeout() -> void:
	texto.visible_characters += 1
	if texto.visible_characters >= texto.get_total_character_count():
		escribiendo = false
		timer_texto.stop()
		finalizar_linea()

func finalizar_linea() -> void:
	if indice >= dialogos_actuales.size():
		return
	var dialogo: Dictionary = dialogos_actuales[indice]
	var pregunta: String = dialogo.get("pregunta", "")
	if pregunta != "":
		iniciar_pregunta(pregunta, dialogo.get("ventana", VENTANA_RESPUESTA))
	else:
		var espera: float = dialogo.get("espera", tiempo_entre_dialogos)
		timer_auto_avance.wait_time = espera
		timer_auto_avance.start()

func _on_timer_auto_avance_timeout() -> void:
	avanzar_dialogo()

func _on_timer_timeout() -> void:
	if not minuto_iniciado or juego_terminado:
		return
	tiempo_restante -= 1
	if tiempo_restante < 0:
		tiempo_restante = 0
	actualizar_reloj()

	if tiempo_restante <= 60 and not quiebre_iniciado:
		quiebre_iniciado = true
		quiebre_pendiente = true
		var tween := create_tween()
		tween.tween_property(chica, "modulate:a", 0.5, 6.0)
		if esperando_evento:
			iniciar_dialogo_quiebre()

	if tiempo_restante <= 0 and not cero_alcanzado:
		cero_alcanzado = true
		timer.stop()
		if esperando_evento and fase_actual == "segundo_minuto":
			iniciar_final_normal()

func iniciar_dialogo_quiebre() -> void:
	if fase_actual == "quiebre":
		return
	quiebre_pendiente = false
	fase_actual = "quiebre"
	cargar_bloque(DialogosUnMinuto.quiebre_minuto_nuevo())

func elegir_ruta() -> void:
	if clicks_fuera_de_pregunta >= 10:
		ruta_final = "sobrecarga"
	elif respuestas_correctas == 0:
		ruta_final = "soledad"
	elif respuestas_correctas >= 3 and respuestas_ignoradas <= 1:
		ruta_final = "calma"
	else:
		ruta_final = "incierta"

func obtener_bloque_ruta() -> Array:
	match ruta_final:
		"calma": return DialogosUnMinuto.ruta_calma()
		"soledad": return DialogosUnMinuto.ruta_soledad()
		"sobrecarga": return DialogosUnMinuto.ruta_sobrecarga()
		_: return DialogosUnMinuto.ruta_incierta()

func avanzar_segundo_minuto() -> void:
	if cero_alcanzado:
		iniciar_final_normal()
		return
	etapa_segundo_minuto += 1
	match etapa_segundo_minuto:
		1: cargar_bloque(obtener_pregunta_segundo_minuto())
		2: cargar_bloque(obtener_cierre_segundo_minuto())
		_:
			esperando_evento = true
			texto.visible_characters = -1

func obtener_pregunta_segundo_minuto() -> Array:
	match ruta_final:
		"calma": return DialogosUnMinuto.pregunta_calma_segundo()
		"soledad": return DialogosUnMinuto.pregunta_soledad_segundo()
		"sobrecarga": return DialogosUnMinuto.pregunta_sobrecarga_segundo()
		_: return DialogosUnMinuto.pregunta_incierta_segundo()

func obtener_cierre_segundo_minuto() -> Array:
	match ruta_final:
		"calma": return DialogosUnMinuto.cierre_calma()
		"soledad": return DialogosUnMinuto.cierre_soledad()
		"sobrecarga": return DialogosUnMinuto.cierre_sobrecarga()
		_: return DialogosUnMinuto.cierre_incierta()

func iniciar_final_normal() -> void:
	if fase_actual == "final":
		return
	fase_actual = "final"
	minuto_iniciado = false
	pregunta_activa = ""
	pregunta_token += 1
	progreso["partidas_jugadas"] += 1
	SaveManager.guardar(SAVE_PATH, progreso)
	match ruta_final:
		"calma": cargar_bloque(DialogosUnMinuto.final_calma())
		"soledad": cargar_bloque(DialogosUnMinuto.final_soledad())
		"sobrecarga": cargar_bloque(DialogosUnMinuto.final_sobrecarga())
		_: cargar_bloque(DialogosUnMinuto.final_incierta())

func activar_final_sobrecarga_prematuro() -> void:
	if juego_terminado or fase_actual == "final":
		return
	juego_terminado = true
	minuto_iniciado = false
	fase_actual = "final"
	timer.stop()
	pregunta_activa = ""
	pregunta_token += 1
	progreso["partidas_jugadas"] += 1
	SaveManager.guardar(SAVE_PATH, progreso)
	cargar_bloque(DialogosUnMinuto.final_sobrecarga())

func finalizar_desaparicion() -> void:
	var tween := create_tween()
	tween.tween_property(chica, "modulate:a", 0.0, 2.0)
	await tween.finished
	volver_al_menu()

func volver_al_menu() -> void:
	await get_tree().create_timer(0.7).timeout
	get_tree().change_scene_to_file(MENU_PATH)

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventKey and event.pressed and event.keycode == KEY_F9:
		if FileAccess.file_exists(SAVE_PATH):
			DirAccess.remove_absolute(ProjectSettings.globalize_path(SAVE_PATH))
		print("Progreso reiniciado.")
