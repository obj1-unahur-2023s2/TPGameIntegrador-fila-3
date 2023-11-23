import wollok.game.*
import motos.*
import musica.*

object fondoMenu {
	const property image = "img/inicioMenu.jpg"
	const property position = game.at(0,0)
}

object tron {
	
	const jugador1 = new Jugador(position = game.at(40 ,5), color = "Roja", ultimaDireccion = "Derecha")
	const jugador2 = new Jugador(position = game.at(40 ,55), color = "Azul", ultimaDireccion = "Derecha")
	const property vidasRojo = new Vidas(jugadorLigado = jugador1, position = game.at(0, game.height() - 1), colorVida = "Rojo")
	const property vidasAzul = new Vidas(jugadorLigado = jugador2, position = game.at(73,game.height() - 1), colorVida = "Azul")
	
	const velocidad = 20	
	
	method inicio(){
		game.addVisual(fondoMenu)
		musicaMenu.reproducir(musicaMenu.musicaInicio())
		keyboard.f().onPressDo{
			game.clear()
			self.iniciarJuego()
		}
	}
	
	method iniciarJuego(){
			musicaMenu.sacarMusica(musicaMenu.musicaInicio())
			musicaEnPartida.reproducir(musicaEnPartida.musicaEnJuego())
		self.funcionesMotos1()
		self.funcionesMotos2()
	}
	
	
	method finDeJuego(){
		game.clear()
		musicaEnPartida.sacarMusica(musicaEnPartida.musicaEnJuego())
		game.addVisual(gameOver)
		keyboard.r().onPressDo( {self.reiniciarJuego()} )
		keyboard.e().onPressDo( {game.stop()} )
	}
	
	method reiniciarJuego(){
		game.clear()
		//musicaEnPartida.reproducir(musicaEnPartida.musicaEnJuego())
		self.funcionesMotos1()
		self.funcionesMotos2()
		
	}
	
	method funcionesMotos1(){
		
	//agregar evento de movimiento automatico al jugador 1
	game.onTick(velocidad, "movimiento1", {jugador1.mover("Derecha")})
	
	game.addVisual(jugador1)
	jugador1.estela().forEach({e => game.addVisual(e)})
	game.addVisual(vidasRojo)
	vidasRojo.vidas().forEach({v => game.addVisual(v)})
	
	// agregar los movimientos a sus respectivas direcciones
	keyboard.w().onPressDo( {
		game.removeTickEvent("movimiento1")
		game.onTick(velocidad, "movimiento1",{
			jugador1.mover("Arriba")
	} )})
	keyboard.s().onPressDo( {
		game.removeTickEvent("movimiento1")
		game.onTick(velocidad, "movimiento1",{
			jugador1.mover("Abajo")
	} )})
	keyboard.d().onPressDo( {
		game.removeTickEvent("movimiento1")
		game.onTick(velocidad, "movimiento1",{
			jugador1.mover("Derecha")
	} )})
	keyboard.a().onPressDo( {
		game.removeTickEvent("movimiento1")
		game.onTick(velocidad, "movimiento1",{
			jugador1.mover("Izquierda")
	} )})
	game.onCollideDo(jugador1, {obstaculo => jugador1.ultimaDireccion("Derecha"); jugador1.position(game.at(40 ,5));  
		jugador2.position(game.at(40 ,55));  game.removeVisual(vidasRojo.vidas().last()); vidasRojo.perderVida()
	})
	
}



	method funcionesMotos2(){
	// agregar evento de movimiento automatico al jugador 2
	game.onTick(velocidad, "movimiento2", {jugador2.mover("Derecha")})
	
	// agregar la motoAzul al tablero junto con su estela
	game.addVisual(jugador2)
	jugador2.estela().forEach({e => game.addVisual(e)})
	vidasAzul.vidas().forEach({v => game.addVisual(v)})
	
	// agregar los movimientos a sus respectivas direcciones
	keyboard.up().onPressDo( {
		game.removeTickEvent("movimiento2")
		game.onTick(velocidad, "movimiento2",{
			jugador2.mover("Arriba")
	} )})
	keyboard.down().onPressDo( {
		game.removeTickEvent("movimiento2")
		game.onTick(velocidad, "movimiento2",{
			jugador2.mover("Abajo")
	} )})
	keyboard.right().onPressDo( {
		game.removeTickEvent("movimiento2")
		game.onTick(velocidad, "movimiento2",{
			jugador2.mover("Derecha")
	} )})
	keyboard.left().onPressDo( {
		game.removeTickEvent("movimiento2")
		game.onTick(velocidad, "movimiento2",{
			jugador2.mover("Izquierda")
	} )})
	game.onCollideDo(jugador2, {obstaculo => jugador2.ultimaDireccion("Derecha"); jugador2.position(game.at(40 ,55));  
		jugador1.position(game.at(40 ,5)); game.removeVisual(vidasAzul.vidas().last()); vidasAzul.perderVida()
	})
	}
} 



