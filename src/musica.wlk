import wollok.game.*


class Musica {
	method hayMusica() = true
	method reproducir(musica) {
		musica.volume(0.5)
		game.schedule(200, {musica.play()})
	}	
	method sacarMusica(musica) {musica.stop()}
}


object musicaEnPartida inherits Musica {
	const property musicaEnJuego = game.sound("./sonidos/tronLegacySoundtrack.mp3")
}

object musicaMenu inherits Musica {
	const property musicaInicio = game.sound("./sonidos/endOfLineFromTron.mp3")
	
	override method reproducir(musica) {
		super(musica)
		musica.shouldLoop(true)
	}
}




