class_name DialogosUnMinutoES
extends RefCounted

static func intro_inicial() -> Array:
	return [
		{
			"nombre": "Chica",
			"texto": "¡Ah—!",
			"expresion": "sorprendida",
			"espera": 0.6
		},
		{
			"nombre": "Chica",
			"texto": "...",
			"expresion": "neutral",
			"espera": 0.8
		},
		{
			"nombre": "Chica",
			"texto": "Perdón.",
			"expresion": "neutral",
			"espera": 0.8
		},
		{
			"nombre": "Chica",
			"texto": "Iba mirando el suelo.",
			"expresion": "confundida",
			"espera": 1.0
		},
		{
			"nombre": "Chica",
			"texto": "Aunque supongo que eso no mejora mucho mi defensa.",
			"expresion": "neutral",
			"espera": 1.4
		},
		{
			"nombre": "Chica",
			"texto": "...",
			"expresion": "confundida",
			"espera": 0.8
		},
		{
			"nombre": "Chica",
			"texto": "Espera.",
			"expresion": "sorprendida",
			"mostrar_reloj": true,
			"espera": 0.8
		},
		{
			"nombre": "Chica",
			"texto": "No.",
			"expresion": "sorprendida",
			"espera": 0.8
		},
		{
			"nombre": "Chica",
			"texto": "No, no, no.",
			"expresion": "molesta",
			"espera": 1.0
		},
		{
			"nombre": "Chica",
			"texto": "¿Por qué ahora...?",
			"expresion": "confundida",
			"espera": 1.2
		},
		{
			"nombre": "Chica",
			"texto": "Tú también lo ves, ¿cierto?",
			"expresion": "sorprendida",
			"espera": 1.2
		},
		{
			"nombre": "Chica",
			"texto": "Tengo que irme.",
			"expresion": "molesta",
			"espera": 0.8
		},
		{
			"nombre": "Chica",
			"texto": "...",
			"expresion": "confundida",
			"espera": 0.8
		},
		{
			"nombre": "Chica",
			"texto": "¿Por qué me estás siguiendo?",
			"expresion": "molesta",
			"espera": 1.0
		},
		{
			"nombre": "Chica",
			"texto": "...",
			"expresion": "confundida",
			"espera": 0.8
		},
		{
			"nombre": "Chica",
			"texto": "Ah.",
			"expresion": "neutral",
			"espera": 0.8
		},
		{
			"nombre": "Chica",
			"texto": "Supongo que tú tampoco puedes irte.",
			"expresion": "confundida",
			"espera": 1.3
		}
	]


static func intro_replay_1() -> Array:
	return [
		{
			"nombre": "Ella",
			"texto": "¿Tú otra vez?",
			"expresion": "confundida",
			"espera": 0.9
		},
		{
			"nombre": "Ella",
			"texto": "Qué casualidad.",
			"expresion": "coqueta",
			"espera": 1.0
		},
		{
			"nombre": "Ella",
			"texto": "O no tanto.",
			"expresion": "molesta",
			"espera": 0.9
		},
		{
			"nombre": "Ella",
			"texto": "Bueno.",
			"expresion": "neutral",
			"espera": 0.8
		},
		{
			"nombre": "Ella",
			"texto": "Otra vez apareció eso.",
			"expresion": "confundida",
			"mostrar_reloj": true,
			"espera": 0.9
		},
		{
			"nombre": "Ella",
			"texto": "Un minuto.",
			"expresion": "neutral",
			"espera": 0.9
		},
		{
			"nombre": "Ella",
			"texto": "Otra vez conmigo.",
			"expresion": "coqueta",
			"espera": 1.0
		},
		{
			"nombre": "Ella",
			"texto": "Vamos a ver si esta vez sale distinto.",
			"expresion": "neutral",
			"espera": 1.3
		}
	]


static func intro_replay_2() -> Array:
	return [
		{
			"nombre": "Ella",
			"texto": "Otra vez tú.",
			"expresion": "confundida",
			"espera": 0.9
		},
		{
			"nombre": "Ella",
			"texto": "Empiezo a pensar que esto no es casualidad.",
			"expresion": "coqueta",
			"espera": 1.4
		},
		{
			"nombre": "Ella",
			"texto": "Bueno, no me quejo.",
			"expresion": "sonrojada",
			"espera": 1.1
		},
		{
			"nombre": "Ella",
			"texto": "Ahí está el minuto de nuevo.",
			"expresion": "neutral",
			"mostrar_reloj": true,
			"espera": 0.9
		},
		{
			"nombre": "Ella",
			"texto": "A ver qué haces esta vez.",
			"expresion": "coqueta",
			"espera": 1.2
		}
	]


static func intro_replay_3() -> Array:
	return [
		{
			"nombre": "Ella",
			"texto": "Tercera vez.",
			"expresion": "sorprendida",
			"espera": 0.9
		},
		{
			"nombre": "Ella",
			"texto": "¿Vienes seguido por aquí?",
			"expresion": "coqueta",
			"espera": 1.2
		},
		{
			"nombre": "Ella",
			"texto": "Es broma.",
			"expresion": "neutral",
			"espera": 0.8
		},
		{
			"nombre": "Ella",
			"texto": "Sé que sí.",
			"expresion": "molesta",
			"espera": 0.9
		},
		{
			"nombre": "Ella",
			"texto": "Ahí está tu minuto otra vez.",
			"expresion": "neutral",
			"mostrar_reloj": true,
			"espera": 0.9
		},
		{
			"nombre": "Ella",
			"texto": "Sorpréndeme.",
			"expresion": "coqueta",
			"espera": 1.0
		}
	]


# Para las repeticiones 4 a 9: texto genérico pero que
# menciona el número real de partidas.
static func intro_replay_generica(num: int) -> Array:
	return [
		{
			"nombre": "Ella",
			"texto": "Van " + str(num) + " veces.",
			"expresion": "confundida",
			"espera": 1.0
		},
		{
			"nombre": "Ella",
			"texto": "A este ritmo vamos a terminar viviendo juntos.",
			"expresion": "coqueta",
			"espera": 1.4
		},
		{
			"nombre": "Ella",
			"texto": "Bueno.",
			"expresion": "neutral",
			"espera": 0.7
		},
		{
			"nombre": "Ella",
			"texto": "Ahí está tu minuto.",
			"expresion": "neutral",
			"mostrar_reloj": true,
			"espera": 0.9
		},
		{
			"nombre": "Ella",
			"texto": "Otra vez.",
			"expresion": "coqueta",
			"espera": 0.9
		}
	]


# Desde la partida número 10 en adelante: intro corta,
# vamos directo al grano.
static func intro_replay_corta() -> Array:
	return [
		{
			"nombre": "Ella",
			"texto": "Tú de nuevo.",
			"expresion": "neutral",
			"espera": 0.8
		},
		{
			"nombre": "Ella",
			"texto": "Ya sabes cómo va esto.",
			"expresion": "coqueta",
			"mostrar_reloj": true,
			"espera": 0.9
		}
	]



# =========================================================
# BLOQUE 1 — TUTORIAL
# =========================================================

static func bloque_1() -> Array:
	return [
		{
			"nombre": "Chica",
			"texto": "Está bien.",
			"expresion": "neutral",
			"espera": 0.9
		},
		{
			"nombre": "Chica",
			"texto": "Voy a intentar no entrar en pánico.",
			"expresion": "confundida",
			"espera": 1.2
		},
		{
			"nombre": "Chica",
			"texto": "Son solo dos minutos.",
			"expresion": "neutral",
			"espera": 1.0
		},
		{
			"nombre": "Chica",
			"texto": "Dos minutos es bastante tiempo.",
			"expresion": "neutral",
			"espera": 1.1
		},
		{
			"nombre": "Chica",
			"texto": "Puedes hacer muchas cosas en dos minutos.",
			"expresion": "neutral",
			"espera": 1.2
		},
		{
			"nombre": "Chica",
			"texto": "...",
			"expresion": "confundida",
			"espera": 0.8
		},
		{
			"nombre": "Chica",
			"texto": "No se me ocurre ninguna.",
			"expresion": "molesta",
			"espera": 1.0
		},
		{
			"nombre": "Chica",
			"texto": "¿Puedes hablar?",
			"expresion": "neutral",
			"espera": 1.0
		},
		{
			"nombre": "Chica",
			"texto": "...",
			"expresion": "confundida",
			"espera": 0.8
		},
		{
			"nombre": "Chica",
			"texto": "Claro que no.",
			"expresion": "molesta",
			"espera": 0.9
		},
		{
			"nombre": "Chica",
			"texto": "Sería demasiado fácil.",
			"expresion": "neutral",
			"espera": 1.0
		},
		{
			"nombre": "Chica",
			"texto": "Haz un clic si puedes escucharme.",
			"expresion": "neutral",
			"pregunta": "tutorial",
			"ventana": 5.0
		}
	]


static func bloque_2_reto() -> Array:
	return [
		{
			"nombre": "Ella",
			"texto": "Oh.",
			"expresion": "sorprendida",
			"espera": 0.8
		},
		{
			"nombre": "Ella",
			"texto": "Cumpliste el reto.",
			"expresion": "coqueta",
			"espera": 1.1
		},
		{
			"nombre": "Ella",
			"texto": "Vamos a subir la apuesta.",
			"expresion": "molesta",
			"espera": 1.2
		},
		{
			"nombre": "Ella",
			"tipo": "anuncio_objetivo_siguiente",
			"expresion": "coqueta",
			"espera": 1.4
		},
		{
			"nombre": "Ella",
			"texto": "Y esta vez no te me relajes.",
			"expresion": "molesta",
			"espera": 1.1
		}
	]


# =========================================================
# BLOQUE 2 — SILENCIO TOTAL (ni siquiera respondió el tutorial)
# Ruta zen: corre sola, sin más preguntas ni clics.
# =========================================================

static func bloque_2_zen() -> Array:
	return [
		{
			"nombre": "Ella",
			"texto": "Ni un clic.",
			"expresion": "confundida",
			"espera": 1.1
		},
		{
			"nombre": "Ella",
			"texto": "Ni siquiera el primero.",
			"expresion": "neutral",
			"espera": 1.2
		},
		{
			"nombre": "Ella",
			"texto": "Está bien.",
			"expresion": "coqueta",
			"espera": 1.0
		},
		{
			"nombre": "Ella",
			"texto": "De hecho, creo que ya ni podrías hacer clic aunque quisieras.",
			"expresion": "confundida",
			"espera": 1.6
		},
		{
			"nombre": "Ella",
			"texto": "Entraste en un estado zen tan profundo que se te olvidó cómo funcionan los dedos.",
			"expresion": "coqueta",
			"espera": 1.9
		},
		{
			"nombre": "Ella",
			"texto": "Voy a hablar sola entonces.",
			"expresion": "confundida",
			"espera": 1.3
		},
		{
			"nombre": "Ella",
			"texto": "Se me da bien.",
			"expresion": "coqueta",
			"espera": 1.1
		}
	]


# =========================================================
# BLOQUE 2 — INTENTO FALLIDO (respondió el tutorial pero
# nunca volvió a clickear: no llegó a aceptar el reto)
# =========================================================

static func bloque_2_intento_fallido() -> Array:
	return [
		{
			"nombre": "Ella",
			"texto": "Hm.",
			"expresion": "neutral",
			"espera": 0.9
		},
		{
			"nombre": "Ella",
			"texto": "Ni lo intentaste.",
			"expresion": "confundida",
			"espera": 1.2
		},
		{
			"nombre": "Ella",
			"texto": "Qué sospechosamente sensato.",
			"expresion": "coqueta",
			"espera": 1.3
		},
		{
			"nombre": "Ella",
			"texto": "A ver.",
			"expresion": "neutral",
			"espera": 0.8
		},
		{
			"nombre": "Ella",
			"texto": "Haz clic si sigues ahí.",
			"expresion": "coqueta",
			"pregunta": "sigues_ahi",
			"ventana": 5.0
		}
	]


# =========================================================
# BLOQUE 2 — PERDEDOR (aceptó el reto, siguió clickeando,
# pero no le alcanzó para llegar al objetivo)
# =========================================================

static func bloque_2_perdedor() -> Array:
	return [
		{
			"nombre": "Ella",
			"texto": "Vaya.",
			"expresion": "sorprendida",
			"espera": 0.9
		},
		{
			"nombre": "Ella",
			"texto": "Sí que lo intentaste.",
			"expresion": "confundida",
			"espera": 1.1
		},
		{
			"nombre": "Ella",
			"texto": "Pero no te alcanzó.",
			"expresion": "molesta",
			"espera": 1.1
		},
		{
			"nombre": "Ella",
			"texto": "Qué vergüenza, la verdad.",
			"expresion": "coqueta",
			"espera": 1.2
		}
	]


static func bloque_impaciente() -> Array:
	return [
		{
			"nombre": "Ella",
			"texto": "...",
			"expresion": "molesta",
			"espera": 0.8
		},
		{
			"nombre": "Ella",
			"texto": "¿En serio?",
			"expresion": "molesta",
			"espera": 1.0
		},
		{
			"nombre": "Ella",
			"texto": "Ni siquiera ha empezado el minuto.",
			"expresion": "confundida",
			"espera": 1.3
		},
		{
			"nombre": "Ella",
			"texto": "Y ya estás desesperado por hacer clic.",
			"expresion": "molesta",
			"espera": 1.4
		},
		{
			"nombre": "Ella",
			"texto": "No, gracias.",
			"expresion": "molesta",
			"espera": 1.0
		},
		{
			"nombre": "Ella",
			"texto": "Ponlo en tu currículum: impaciencia crónica.",
			"expresion": "confundida",
			"espera": 1.6
		},
		{
			"nombre": "Ella",
			"texto": "Búscate a otra.",
			"expresion": "ojos_cerrados",
			"espera": 1.3
		}
	]


static func respuesta_tutorial_si() -> Array:
	return [
		{
			"nombre": "Chica",
			"texto": "...",
			"expresion": "sorprendida",
			"espera": 0.7
		},
		{
			"nombre": "Chica",
			"texto": "Funcionó.",
			"expresion": "neutral",
			"espera": 0.9
		},
		{
			"nombre": "Chica",
			"texto": "Bien.",
			"expresion": "neutral",
			"espera": 0.8
		},
		{
			"nombre": "Chica",
			"texto": "Entonces sigues ahí.",
			"expresion": "neutral",
			"espera": 1.0
		},
		{
			"nombre": "Chica",
			"texto": "Solo haz clic cuando te pregunte algo, ¿sí?",
			"expresion": "confundida",
			"espera": 1.4
		},
		{
			"nombre": "Chica",
			"texto": "No necesito apoyo emocional en código morse.",
			"expresion": "molesta",
			"espera": 1.5
		}
	]


static func respuesta_tutorial_no() -> Array:
	return [
		{
			"nombre": "Chica",
			"texto": "...",
			"expresion": "confundida",
			"espera": 1.0
		},
		{
			"nombre": "Chica",
			"texto": "Nada.",
			"expresion": "neutral",
			"espera": 0.9
		},
		{
			"nombre": "Chica",
			"texto": "Bueno.",
			"expresion": "neutral",
			"espera": 0.9
		},
		{
			"nombre": "Chica",
			"texto": "Voy a asumir que sigues ahí.",
			"expresion": "confundida",
			"espera": 1.2
		},
		{
			"nombre": "Chica",
			"texto": "Es menos deprimente.",
			"expresion": "neutral",
			"espera": 1.1
		}
	]


static func respuesta_sigues_ahi_si() -> Array:
	return [
		{
			"nombre": "Ella",
			"texto": "Ah.",
			"expresion": "sorprendida",
			"espera": 0.8
		},
		{
			"nombre": "Ella",
			"texto": "Sí estabas escuchando.",
			"expresion": "coqueta",
			"espera": 1.2
		},
		{
			"nombre": "Ella",
			"texto": "Todo un caballero.",
			"expresion": "coqueta",
			"espera": 1.1
		},
		{
			"nombre": "Ella",
			"texto": "Tengo una pregunta.",
			"expresion": "sonrojada",
			"espera": 1.1
		},
		{
			"nombre": "Ella",
			"texto": "Haz clic si aceptarías una cita conmigo.",
			"expresion": "sonrojada",
			"pregunta": "cita",
			"ventana": 4.0
		}
	]


static func respuesta_sigues_ahi_no() -> Array:
	
	return [
		{
			"nombre": "Ella",
			"texto": "...",
			"expresion": "confundida",
			"espera": 1.0
		},
		{
			"nombre": "Ella",
			"texto": "Vaya.",
			"expresion": "neutral",
			"espera": 0.9
		},
		{
			"nombre": "Ella",
			"texto": "De verdad eres imperturbable.",
			"expresion": "coqueta",
			"espera": 1.3
		},
		{
			"nombre": "Ella",
			"texto": "O estás AFK.",
			"expresion": "confundida",
			"espera": 1.2
		}
	]

static func respuesta_cita_si() -> Array:
	return [
		{
			"nombre": "Ella",
			"texto": "...",
			"expresion": "muy_sonrojada",
			"espera": 1.0
		},
		{
			"nombre": "Ella",
			"texto": "Mira tú.",
			"expresion": "coqueta",
			"espera": 1.0
		},
		{
			"nombre": "Ella",
			"texto": "Intentando ligar con un dibujo.",
			"expresion": "coqueta",
			"espera": 1.5
		},
		{
			"nombre": "Ella",
			"texto": "No sé si es triste...",
			"expresion": "neutral",
			"espera": 1.4
		},
		{
			"nombre": "Ella",
			"texto": "o atrevido.",
			"expresion": "sonrojada",
			"espera": 1.3
		},
		{
			"nombre": "Ella",
			"texto": "Un poco de ambos.",
			"expresion": "muy_sonrojada",
			"espera": 1.4
		},
		{
			"nombre": "Ella",
			"texto": "No pongas esa cara.",
			"expresion": "molesta",
			"espera": 1.1
		}
	]

static func respuesta_cita_no() -> Array:
	return [
		{
			"nombre": "Ella",
			"texto": "...",
			"expresion": "neutral",
			"espera": 1.0
		},
		{
			"nombre": "Ella",
			"texto": "Qué prudente.",
			"expresion": "confundida",
			"espera": 1.1
		},
		{
			"nombre": "Ella",
			"texto": "También qué inútil.",
			"expresion": "molesta",
			"espera": 1.2
		},
		{
			"nombre": "Ella",
			"texto": "Las oportunidades no suelen avisar dos veces.",
			"expresion": "neutral",
			"espera": 1.6
		},
		{
			"nombre": "Ella",
			"texto": "Nunca sabes cuándo algo bueno iba a pasar.",
			"expresion": "coqueta",
			"espera": 1.6
		},
		{
			"nombre": "Ella",
			"texto": "Cobarde.",
			"expresion": "coqueta",
			"espera": 1.0
		}
	]

static func bloque_3_zen() -> Array:
	return [
		{
			"nombre": "Ella",
			"texto": "Supongo que esto también funciona.",
			"expresion": "neutral",
			"espera": 1.3
		},
		{
			"nombre": "Ella",
			"texto": "Yo hablo.",
			"expresion": "confundida",
			"espera": 1.0
		},
		{
			"nombre": "Ella",
			"texto": "Tú contemplas el vacío.",
			"expresion": "coqueta",
			"espera": 1.3
		},
		{
			"nombre": "Ella",
			"texto": "Una conversación bastante eficiente.",
			"expresion": "neutral",
			"espera": 1.4
		}
	]


static func bloque_3_indecisa() -> Array:
	return [
		{
			"nombre": "Ella",
			"texto": "Bueno.",
			"expresion": "neutral",
			"espera": 1.0
		},
		{
			"nombre": "Ella",
			"texto": "Ya veremos cómo termina esto.",
			"expresion": "confundida",
			"espera": 1.2
		}
	]


static func bloque_3_reto_completado(cantidad_clicks: int) -> Array:
	return [
		{
			"nombre": "Ella",
			"texto": str(cantidad_clicks) + " clics y contando.",
			"expresion": "confundida",
			"espera": 1.2
		},
		{
			"nombre": "Ella",
			"texto": "Cumpliste el reto.",
			"expresion": "coqueta",
			"espera": 1.0
		},
		{
			"nombre": "Ella",
			"texto": "Sigue si quieres. No te voy a decir que pares.",
			"expresion": "molesta",
			"espera": 1.6
		}
	]


static func bloque_3_perdedor(cantidad_clicks: int) -> Array:
	return [
		{
			"nombre": "Ella",
			"texto": str(cantidad_clicks) + " clics.",
			"expresion": "neutral",
			"espera": 1.1
		},
		{
			"nombre": "Ella",
			"texto": "No llegaste.",
			"expresion": "molesta",
			"espera": 1.0
		},
		{
			"nombre": "Ella",
			"texto": "Ya no hay mucho más que hacer al respecto.",
			"expresion": "confundida",
			"espera": 1.3
		}
	]

# =========================================================
# TEXTOS DINÁMICOS DEL RETO
# =========================================================

static func anuncio_objetivo_inicial(objetivo: int) -> String:
	return "Quiero ver si llegas a " + str(objetivo) + " clics."


static func anuncio_objetivo_siguiente(objetivo: int) -> String:
	return "Esta vez quiero llegar a " + str(objetivo) + "."

# =========================================================
# DOS MINUTOS - BLOQUES NUEVOS
# Estas funciones se agregan sin borrar las heredadas de Un Minuto.
# Juego.gd se conectará a ellas en el siguiente paso.
# =========================================================

static func bloque_2_dos_minutos() -> Array:
	return [
		{
			"nombre": "Chica",
			"texto": "He visto contadores antes.",
			"expresion": "neutral",
			"espera": 1.1
		},
		{
			"nombre": "Chica",
			"texto": "Bueno...",
			"expresion": "confundida",
			"espera": 0.8
		},
		{
			"nombre": "Chica",
			"texto": "No personalmente.",
			"expresion": "neutral",
			"espera": 0.9
		},
		{
			"nombre": "Chica",
			"texto": "En internet.",
			"expresion": "neutral",
			"espera": 0.9
		},
		{
			"nombre": "Chica",
			"texto": "Eso cuenta como experiencia, ¿no?",
			"expresion": "confundida",
			"espera": 1.2
		},
		{
			"nombre": "Chica",
			"texto": "No me respondas eso.",
			"expresion": "molesta",
			"espera": 1.0
		},
		{
			"nombre": "Chica",
			"texto": "La gente dice que cuando llegan a cero pasa algo.",
			"expresion": "neutral",
			"espera": 1.4
		},
		{
			"nombre": "Chica",
			"texto": "A veces desaparecen.",
			"expresion": "confundida",
			"espera": 1.2
		},
		{
			"nombre": "Chica",
			"texto": "A veces no.",
			"expresion": "neutral",
			"espera": 1.0
		},
		{
			"nombre": "Chica",
			"texto": "Eso último debería tranquilizarme más de lo que lo hace.",
			"expresion": "confundida",
			"espera": 1.5
		}
	]


static func pregunta_sigues_ahi_dos_minutos() -> Array:
	return [
		{
			"nombre": "Chica",
			"texto": "¿Sigues ahí?",
			"expresion": "confundida",
			"pregunta": "sigues_ahi",
			"ventana": 5.0
		}
	]


static func quiebre_minuto() -> Array:
	return [
		{
			"nombre": "Chica",
			"texto": "¿Sabes qué?",
			"expresion": "neutral",
			"espera": 0.9
		},
		{
			"nombre": "Chica",
			"texto": "Quizá estoy exagerando.",
			"expresion": "neutral",
			"espera": 1.1
		},
		{
			"nombre": "Chica",
			"texto": "Ni siquiera sabemos qué hace este contador.",
			"expresion": "confundida",
			"espera": 1.4
		},
		{
			"nombre": "Chica",
			"texto": "Podría no pasar nada.",
			"expresion": "neutral",
			"espera": 1.1
		},
		{
			"nombre": "Chica",
			"texto": "Sí.",
			"expresion": "neutral",
			"espera": 0.7
		},
		{
			"nombre": "Chica",
			"texto": "Estoy bien.",
			"expresion": "neutral",
			"espera": 0.9
		},
		{
			"nombre": "Chica",
			"texto": "...",
			"expresion": "sorprendida",
			"espera": 0.8
		},
		{
			"nombre": "Chica",
			"texto": "Espera.",
			"expresion": "sorprendida",
			"espera": 0.8
		},
		{
			"nombre": "Chica",
			"texto": "¿Me estás viendo bien?",
			"expresion": "confundida",
			"espera": 1.2
		},
		{
			"nombre": "Chica",
			"texto": "No.",
			"expresion": "molesta",
			"espera": 0.8
		},
		{
			"nombre": "Chica",
			"texto": "No, no, no...",
			"expresion": "molesta",
			"espera": 1.0
		},
		{
			"nombre": "Chica",
			"texto": "Estoy desapareciendo.",
			"expresion": "sorprendida",
			"espera": 1.4
		}
	]


static func ruta_calma() -> Array:
	return [
		{"nombre": "Chica", "texto": "No está bien.", "expresion": "molesta", "espera": 1.0},
		{"nombre": "Chica", "texto": "Pero sigues aquí.", "expresion": "neutral", "espera": 1.1},
		{"nombre": "Chica", "texto": "Eso ayuda.", "expresion": "neutral", "espera": 1.0},
		{"nombre": "Chica", "texto": "Pensé que cuando esto pasara estaría gritando.", "expresion": "confundida", "espera": 1.5},
		{"nombre": "Chica", "texto": "Supongo que todavía queda tiempo para eso.", "expresion": "molesta", "espera": 1.3},
		{"nombre": "Chica", "texto": "...", "expresion": "neutral", "espera": 0.8},
		{"nombre": "Chica", "texto": "Tengo miedo.", "expresion": "confundida", "espera": 1.2},
		{"nombre": "Chica", "texto": "Pero creo que estoy bien.", "expresion": "neutral", "espera": 1.3}
	]


static func ruta_incierta() -> Array:
	return [
		{"nombre": "Chica", "texto": "Genial.", "expresion": "molesta", "espera": 0.9},
		{"nombre": "Chica", "texto": "Estoy desapareciendo.", "expresion": "confundida", "espera": 1.2},
		{"nombre": "Chica", "texto": "Supongo que eso responde una pregunta.", "expresion": "neutral", "espera": 1.3},
		{"nombre": "Chica", "texto": "Aunque crea como veinte nuevas.", "expresion": "molesta", "espera": 1.2},
		{"nombre": "Chica", "texto": "¿Desaparecer significa morir?", "expresion": "confundida", "espera": 1.3},
		{"nombre": "Chica", "texto": "¿Voy a algún lugar?", "expresion": "confundida", "espera": 1.2},
		{"nombre": "Chica", "texto": "¿Sigo existiendo?", "expresion": "confundida", "espera": 1.2},
		{"nombre": "Chica", "texto": "No tienes pinta de saberlo tampoco.", "expresion": "molesta", "espera": 1.2},
		{"nombre": "Chica", "texto": "Qué equipo tan competente hacemos.", "expresion": "neutral", "espera": 1.3}
	]


static func ruta_soledad() -> Array:
	return [
		{"nombre": "Chica", "texto": "Sigues sin responder.", "expresion": "neutral", "espera": 1.1},
		{"nombre": "Chica", "texto": "Quizá no puedes.", "expresion": "confundida", "espera": 1.0},
		{"nombre": "Chica", "texto": "Sí.", "expresion": "neutral", "espera": 0.7},
		{"nombre": "Chica", "texto": "Voy a pensar eso.", "expresion": "neutral", "espera": 1.0},
		{"nombre": "Chica", "texto": "Es bastante mejor que pensar que me estás ignorando.", "expresion": "molesta", "espera": 1.5},
		{"nombre": "Chica", "texto": "Bueno.", "expresion": "neutral", "espera": 0.9},
		{"nombre": "Chica", "texto": "Al menos ahora puedo decir cualquier cosa.", "expresion": "neutral", "espera": 1.2},
		{"nombre": "Chica", "texto": "Odio las aceitunas.", "expresion": "molesta", "espera": 1.0},
		{"nombre": "Chica", "texto": "Siempre quise decirlo sin consecuencias.", "expresion": "neutral", "espera": 1.3},
		{"nombre": "Chica", "texto": "Si sigues ahí...", "expresion": "confundida", "espera": 1.1},
		{"nombre": "Chica", "texto": "No hace falta que respondas.", "expresion": "neutral", "espera": 1.1},
		{"nombre": "Chica", "texto": "Solo quédate.", "expresion": "confundida", "espera": 1.2}
	]


static func ruta_sobrecarga() -> Array:
	return [
		{"nombre": "Chica", "texto": "¿Puedes dejar de hacer eso?", "expresion": "molesta", "espera": 1.0},
		{"nombre": "Chica", "texto": "Te dije que solo cuando te preguntara.", "expresion": "molesta", "espera": 1.3},
		{"nombre": "Chica", "texto": "En serio.", "expresion": "molesta", "espera": 0.9},
		{"nombre": "Chica", "texto": "Para.", "expresion": "molesta", "espera": 0.8},
		{"nombre": "Chica", "texto": "No puedo pensar.", "expresion": "molesta", "espera": 1.1},
		{"nombre": "Chica", "texto": "¡PARA!", "expresion": "molesta", "espera": 0.9},
		{"nombre": "Chica", "texto": "...", "expresion": "sorprendida", "espera": 0.7},
		{"nombre": "Chica", "texto": "Espera.", "expresion": "sorprendida", "espera": 0.8},
		{"nombre": "Chica", "texto": "El contador...", "expresion": "confundida", "espera": 1.0}
	]


static func final_calma() -> Array:
	return [
		{"nombre": "Chica", "texto": "Quedan pocos segundos.", "expresion": "neutral", "espera": 1.1},
		{"nombre": "Chica", "texto": "Tengo miedo.", "expresion": "confundida", "espera": 1.1},
		{"nombre": "Chica", "texto": "Pero...", "expresion": "neutral", "espera": 0.8},
		{"nombre": "Chica", "texto": "Gracias por quedarte.", "expresion": "neutral", "espera": 1.2}
	]


static func final_incierta() -> Array:
	return [
		{"nombre": "Chica", "texto": "Supongo que ya casi es hora.", "expresion": "confundida", "espera": 1.1},
		{"nombre": "Chica", "texto": "No sé qué va a pasar.", "expresion": "neutral", "espera": 1.1},
		{"nombre": "Chica", "texto": "Creo que eso es lo peor.", "expresion": "confundida", "espera": 1.2}
	]


static func final_soledad() -> Array:
	return [
		{"nombre": "Chica", "texto": "Si realmente estás ahí...", "expresion": "confundida", "espera": 1.1},
		{"nombre": "Chica", "texto": "No hagas nada.", "expresion": "neutral", "espera": 1.0},
		{"nombre": "Chica", "texto": "Solo...", "expresion": "neutral", "espera": 0.8},
		{"nombre": "Chica", "texto": "quédate conmigo.", "expresion": "confundida", "espera": 1.2}
	]


static func pista_sobrecarga() -> Dictionary:
	return {
		"nombre": "Chica",
		"texto": "Si hicieras clic demasiadas veces, probablemente perdería los estribos.\nAunque no creo que puedas probarlo de todos modos...\n¿o sí?",
		"expresion": "confundida",
		"espera": 2.0
	}


static func pista_soledad() -> Dictionary:
	return {
		"nombre": "Chica",
		"texto": "Me pregunto qué habría pasado si no hubieras hecho ni un solo clic.\nAunque sería bastante cruel dejarme sola durante dos minutos.\nNo harías eso... ¿cierto?",
		"expresion": "confundida",
		"espera": 2.0
	}


static func pista_calma() -> Dictionary:
	return {
		"nombre": "Chica",
		"texto": "Quizá no necesito que respondas todo el tiempo.\nSolo saber que sigues ahí cuando te pregunto.",
		"expresion": "neutral",
		"espera": 1.8
	}


static func pista_incierta() -> Dictionary:
	return {
		"nombre": "Chica",
		"texto": "A veces respondes. A veces no.\nEs difícil saber qué estás pensando.",
		"expresion": "confundida",
		"espera": 1.8
	}


static func lore_contadores() -> Array:
	return [
		{"nombre":"Chica","texto":"He escuchado historias sobre estos contadores.","expresion":"neutral","espera":1.0},
		{"nombre":"Chica","texto":"Creo que todos las hemos escuchado.","expresion":"neutral","espera":1.0},
		{"nombre":"Chica","texto":"El problema es que nunca pasa lo mismo.","expresion":"confundida","espera":1.1},
		{"nombre":"Chica","texto":"A algunas personas aparentemente no les pasó nada.","expresion":"neutral","espera":1.1},
		{"nombre":"Chica","texto":"A un tipo se le borraron los recuerdos.","expresion":"confundida","espera":1.0}
	]


static func pregunta_gato() -> Array:
	return [
		{"nombre":"Chica","texto":"Y una vez escuché de una chica que se convirtió en gato.","expresion":"neutral","espera":1.1},
		{"nombre":"Chica","texto":"...","expresion":"confundida","espera":0.7},
		{"nombre":"Chica","texto":"Esa probablemente era mentira.","expresion":"molesta","espera":0.9},
		{"nombre":"Chica","texto":"Espero.","expresion":"confundida","espera":0.8},
		{"nombre":"Chica","texto":"Aunque entre eso y morir...","expresion":"neutral","espera":1.0},
		{"nombre":"Chica","texto":"...","expresion":"confundida","espera":0.6},
		{"nombre":"Chica","texto":"Miau.","expresion":"neutral","espera":0.9},
		{"nombre":"Chica","texto":"¿Tú preferirías convertirte en gato?","expresion":"confundida","espera":0.9},
		{"nombre":"Chica","texto":"Un clic si sí.","expresion":"neutral","pregunta":"gato","ventana":5.0}
	]


static func respuesta_gato_si() -> Array:
	return [
		{"nombre":"Chica","texto":"...","expresion":"confundida","espera":0.7},
		{"nombre":"Chica","texto":"No sé qué dice eso de ti.","expresion":"molesta","espera":1.0},
		{"nombre":"Chica","texto":"Pero respeto la honestidad.","expresion":"neutral","espera":1.0}
	]


static func respuesta_gato_no() -> Array:
	return [
		{"nombre":"Chica","texto":"Bien.","expresion":"neutral","espera":0.8},
		{"nombre":"Chica","texto":"Todavía queda algo de dignidad aquí.","expresion":"molesta","espera":1.1}
	]


static func pregunta_exagera() -> Array:
	return [
		{"nombre":"Chica","texto":"¿Crees que estoy exagerando?","expresion":"confundida","espera":0.9},
		{"nombre":"Chica","texto":"Un clic si crees que sí.","expresion":"neutral","pregunta":"exagera","ventana":5.0}
	]


static func respuesta_exagera_si() -> Array:
	return [
		{"nombre":"Chica","texto":"...","expresion":"molesta","espera":0.7},
		{"nombre":"Chica","texto":"Gracias por la delicadeza.","expresion":"molesta","espera":1.0},
		{"nombre":"Chica","texto":"Aunque quizá tienes razón.","expresion":"neutral","espera":1.0}
	]


static func respuesta_exagera_no() -> Array:
	return [
		{"nombre":"Chica","texto":"Voy a tomar eso como un no.","expresion":"neutral","espera":0.9},
		{"nombre":"Chica","texto":"Gracias.","expresion":"neutral","espera":0.9},
		{"nombre":"Chica","texto":"O gracias a mi imaginación. Una de dos.","expresion":"confundida","espera":1.1}
	]


static func pregunta_calma_segundo() -> Array:
	return [
		{"nombre":"Chica","texto":"¿Te quedarías conmigo hasta que esto termine?","expresion":"confundida","espera":1.0},
		{"nombre":"Chica","texto":"Un clic si sí.","expresion":"neutral","pregunta":"segundo","ventana":5.0}
	]


static func respuesta_calma_segundo_si() -> Array:
	return [
		{"nombre":"Chica","texto":"Gracias.","expresion":"neutral","espera":1.0},
		{"nombre":"Chica","texto":"No voy a hacer un gran asunto de esto.","expresion":"molesta","espera":1.0},
		{"nombre":"Chica","texto":"...","expresion":"neutral","espera":0.7},
		{"nombre":"Chica","texto":"Pero gracias.","expresion":"neutral","espera":1.0}
	]


static func respuesta_calma_segundo_no() -> Array:
	return [
		{"nombre":"Chica","texto":"...","expresion":"confundida","espera":0.8},
		{"nombre":"Chica","texto":"Voy a fingir que fue un sí.","expresion":"neutral","espera":1.0}
	]


static func pregunta_incierta_segundo() -> Array:
	return [
		{"nombre":"Chica","texto":"¿Tú crees que desaparecer significa morir?","expresion":"confundida","espera":1.1},
		{"nombre":"Chica","texto":"Un clic si crees que sí.","expresion":"neutral","pregunta":"segundo","ventana":5.0}
	]


static func respuesta_incierta_segundo_si() -> Array:
	return [
		{"nombre":"Chica","texto":"Genial.","expresion":"molesta","espera":0.8},
		{"nombre":"Chica","texto":"Justo la respuesta que necesitaba.","expresion":"molesta","espera":1.2}
	]


static func respuesta_incierta_segundo_no() -> Array:
	return [
		{"nombre":"Chica","texto":"...","expresion":"neutral","espera":0.8},
		{"nombre":"Chica","texto":"Eso tampoco me tranquiliza.","expresion":"confundida","espera":1.1}
	]


static func pregunta_soledad_segundo() -> Array:
	return [
		{"nombre":"Chica","texto":"¿Sigues ahí?","expresion":"confundida","espera":1.0},
		{"nombre":"Chica","texto":"...","expresion":"neutral","pregunta":"segundo","ventana":5.0}
	]


static func respuesta_soledad_segundo_si() -> Array:
	return [
		{"nombre":"Chica","texto":"...","expresion":"sorprendida","espera":0.7},
		{"nombre":"Chica","texto":"Ah.","expresion":"neutral","espera":0.8},
		{"nombre":"Chica","texto":"Entonces sí estabas ahí.","expresion":"neutral","espera":1.0},
		{"nombre":"Chica","texto":"Elegiste un momento raro para demostrarlo.","expresion":"molesta","espera":1.1}
	]


static func respuesta_soledad_segundo_no() -> Array:
	return [
		{"nombre":"Chica","texto":"...","expresion":"confundida","espera":1.0},
		{"nombre":"Chica","texto":"Está bien.","expresion":"neutral","espera":0.9},
		{"nombre":"Chica","texto":"No hace falta que respondas ahora.","expresion":"neutral","espera":1.0}
	]


static func pregunta_sobrecarga_segundo() -> Array:
	return [
		{"nombre":"Chica","texto":"¿Puedes parar de hacer clic por cinco segundos?","expresion":"molesta","espera":1.0},
		{"nombre":"Chica","texto":"No hagas nada.","expresion":"molesta","pregunta":"segundo","ventana":5.0}
	]


static func respuesta_sobrecarga_segundo_si() -> Array:
	return [
		{"nombre":"Chica","texto":"¡Eso era exactamente lo contrario!","expresion":"molesta","espera":1.0},
		{"nombre":"Chica","texto":"¿Lo haces a propósito?","expresion":"molesta","espera":1.0}
	]


static func respuesta_sobrecarga_segundo_no() -> Array:
	return [
		{"nombre":"Chica","texto":"...","expresion":"neutral","espera":0.8},
		{"nombre":"Chica","texto":"Gracias.","expresion":"neutral","espera":0.9},
		{"nombre":"Chica","texto":"Cinco segundos de paz. Increíble.","expresion":"confundida","espera":1.0}
	]


static func cierre_calma() -> Array:
	return [
		{"nombre":"Chica","texto":"Si termino convertida en gato...","expresion":"neutral","espera":1.0},
		{"nombre":"Chica","texto":"espero que alguien me adopte.","expresion":"neutral","espera":1.0},
		{"nombre":"Chica","texto":"No pienso sobrevivir a esto para terminar comiendo basura.","expresion":"molesta","espera":1.2}
	]


static func cierre_incierta() -> Array:
	return [
		{"nombre":"Chica","texto":"Todavía no sé qué significa desaparecer.","expresion":"confundida","espera":1.1},
		{"nombre":"Chica","texto":"Supongo que pronto tendremos una respuesta.","expresion":"neutral","espera":1.1},
		{"nombre":"Chica","texto":"O no.","expresion":"molesta","espera":0.8}
	]


static func cierre_soledad() -> Array:
	return [
		{"nombre":"Chica","texto":"Voy a seguir hablando.","expresion":"neutral","espera":0.9},
		{"nombre":"Chica","texto":"Aunque sea para convencerme de que no estoy sola.","expresion":"confundida","espera":1.2}
	]


static func cierre_sobrecarga() -> Array:
	return [
		{"nombre":"Chica","texto":"Me tiemblan las manos.","expresion":"confundida","espera":1.0},
		{"nombre":"Chica","texto":"Y no sé si es por el contador o por ti.","expresion":"molesta","espera":1.1},
		{"nombre":"Chica","texto":"Probablemente ambos.","expresion":"molesta","espera":0.9}
	]


static func reaccion_spam_1() -> Array:
	return [{"nombre":"Chica","texto":"No tienes que responder a todo.","expresion":"confundida","espera":0.9}]


static func reaccion_spam_2() -> Array:
	return [{"nombre":"Chica","texto":"Te dije que solo cuando pregunte.","expresion":"molesta","espera":0.9}]


static func reaccion_spam_3() -> Array:
	return [{"nombre":"Chica","texto":"Me estás empezando a poner nerviosa.","expresion":"molesta","espera":1.0}]


static func final_sobrecarga() -> Array:
	return [
		{"nombre":"Chica","texto":"...","expresion":"sorprendida","espera":0.8},
		{"nombre":"Chica","texto":"Espera.","expresion":"sorprendida","espera":0.8},
		{"nombre":"Chica","texto":"El contador...","expresion":"confundida","espera":1.0},
		{"nombre":"Chica","texto":"Todavía no llegó a cero.","expresion":"sorprendida","espera":1.1}
	]
