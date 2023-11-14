import wollok.game.*
import motos.*
import borde.*
import muros.*
import musica.*


object fondoMenu {
	const property image = "assets/tronlegacy.png"
	//const property imgControles1= "img/flechas.png"
	//const property imgControles2= "img/flecha2.png"
	//const property imgMoto= "img/moto1.png"
	//const property imgContinuar = "img/presioneF.png"
	const property position = game.at(0,0)
	
}

object tron {
	
	const velocidad = 50	
	
	method inicio(){
		game.addVisual(fondoMenu)
			musicaMenu.reproducir(musicaMenu.musicaInicio())
		keyboard.f().onPressDo{
			game.clear()
			self.iniciarJuego()
		}
	}
	
	method iniciarJuego(){
		game.clear()
			musicaMenu.sacarMusica(musicaMenu.musicaInicio())
			musicaEnPartida.reproducir(musicaEnPartida.musicaEnJuego())
		self.movimientoMotos1()
		self.movimientoMotos2()
	}
	
	
	
	method movimientoMotos1(/*jugadorNro*/){
		
	//agregar evento de movimiento automatico al jugador 1
	game.onTick(velocidad, "movimiento1", {jugador1.arriba()})
	
	game.addVisual(jugador1)
	jugador1.estela().forEach({e => game.addVisual(e)})
	game.addVisual(vidasRojo)
	vidasRojo.vidas().forEach({v => game.addVisual(v)})
	
	// agregar los movimientos a sus respectivas direcciones
	keyboard.up().onPressDo( {
		game.removeTickEvent("movimiento1")
		game.onTick(velocidad, "movimiento1",{
			jugador1.arriba()
	} )})
	keyboard.down().onPressDo( {
		game.removeTickEvent("movimiento1")
		game.onTick(velocidad, "movimiento1",{
			jugador1.abajo()
	} )})
	keyboard.right().onPressDo( {
		game.removeTickEvent("movimiento1")
		game.onTick(velocidad, "movimiento1",{
			jugador1.derecha()
	} )})
	keyboard.left().onPressDo( {
		game.removeTickEvent("movimiento1")
		game.onTick(velocidad, "movimiento1",{
			jugador1.izquierda()
	} )})
	
	game.onCollideDo(jugador1, {obstaculo => jugador1.position(game.at(10 ,30)) ; game.removeVisual(vidasRojo.vidas().last()); vidasRojo.perderVida() })
}

	//dada
///////////////////////////////////////////////////////////////////////////////////////////////////////
	method movimientoMotos2(/*jugadorNro*/){
	// agregar evento de movimiento automatico al jugador 2
	game.onTick(velocidad, "movimiento2", {jugador2.arriba()})
	
	// agregar la motoAzul al tablero junto con su estela
	game.addVisual(jugador2)
	jugador2.estela().forEach({e => game.addVisual(e)})
	vidasAzul.vidas().forEach({v => game.addVisual(v)})
	
	/* estela infinita
	game.onTick(velocidad, "estelaInfinita", {
		jugador2.agregarEstela(new EstelaAzul(position = jugador2.ultPosDeLaEstela()))
		game.addVisual(jugador2.estela().last())
	})
	* 
	*/
	
	// agregar los movimientos a sus respectivas direcciones
	keyboard.w().onPressDo( {
		game.removeTickEvent("movimiento2")
		game.onTick(velocidad, "movimiento2",{
			jugador2.arriba()
	} )})
	keyboard.s().onPressDo( {
		game.removeTickEvent("movimiento2")
		game.onTick(velocidad, "movimiento2",{
			jugador2.abajo()
	} )})
	keyboard.d().onPressDo( {
		game.removeTickEvent("movimiento2")
		game.onTick(velocidad, "movimiento2",{
			jugador2.derecha()
	} )})
	keyboard.a().onPressDo( {
		game.removeTickEvent("movimiento2")
		game.onTick(velocidad, "movimiento2",{
			jugador2.izquierda()
	} )})
	game.onCollideDo(jugador2, {obstaculo => jugador2.position(game.at(70 ,30)); game.removeVisual(vidasAzul.vidas().last()); vidasAzul.perderVida()  })
}
	/////////////////////////////////////////////////////////////////////////////////////////////////
	/*
	// agregar borde
	borde.bordeO().forEach({b => game.addVisual(b)})
	borde.bordeE().forEach({b => game.addVisual(b)})
	borde.bordeN().forEach({b => game.addVisual(b)})
	borde.bordeS().forEach({b => game.addVisual(b)})
	*/
	// coliciones
	//game.onCollideDo(jugador1, {obstaculo => jugador1.position(game.at(10 ,30)) ; game.removeVisual(vidasRojo.vidas().last()); vidasRojo.perderVida() })
	//game.onCollideDo(jugador2, {obstaculo => jugador2.position(game.at(70 ,30)); game.removeVisual(vidasAzul.vidas().last()); vidasAzul.perderVida()  })
	
	//game.start()
} 




