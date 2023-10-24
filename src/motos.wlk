import wollok.game.*

object jugador1 {
	var ultimaDireccion
	var property position = game.center()
	var property image = "MotoRojaN.png"
	
	const estel1 = new estelaRoja(position = game.at(position.x() -1, position.y()))
	const estel2 = new estelaRoja(position = game.at(estel1.position().x() -1, estel1.position().y()))
	const estel3 = new estelaRoja(position = game.at(estel2.position().x() -1, estel2.position().y()))
	const estel4 = new estelaRoja(position = game.at(estel3.position().x() -1, estel3.position().y()))
	const estel5 = new estelaRoja(position = game.at(estel4.position().x() -1, estel4.position().y()))
	const estel6 = new estelaRoja(position = game.at(estel5.position().x() -1, estel5.position().y()))
	const estel7 = new estelaRoja(position = game.at(estel6.position().x() -1, estel6.position().y()))
	const estel8 = new estelaRoja(position = game.at(estel7.position().x() -1, estel7.position().y()))
	const estel9 = new estelaRoja(position = game.at(estel8.position().x() -1, estel8.position().y()))
	
	const property estela = [estel1, estel2, estel3, estel4 , estel5 , estel6 ,estel7 , estel8, estel9]
	var property ultPosDeLaEstela
	var property ultPosMoto
	
	method agregarEstela(unaEstela) {
		estela.add(unaEstela)
	}
	
	method cambiarPosicion() {
		(estela.size() - 1.. 1).forEach{e => estela.get(e).position(estela.get(e - 1).position())}
		estela.first().position(ultPosMoto)
	}
	
	method arriba() {
		ultimaDireccion = "arriba"
		image = "MotoRojaN.png"
		
		ultPosDeLaEstela = estela.last().position()
		ultPosMoto = position
		self.position(self.position().up(1))
		self.cambiarPosicion()
	}
	
	method abajo() {
		ultimaDireccion = "abajo"
		image = "MotoRojaS.png"
		
		ultPosDeLaEstela = estela.last().position()
		ultPosMoto = position
		self.position(self.position().down(1))
		self.cambiarPosicion()
	}
	
	method derecha() {
		ultimaDireccion = "derecha"
		image = "MotoRojaE.png"
		
		ultPosDeLaEstela = estela.last().position()
		ultPosMoto = position
		self.position(self.position().right(1))
		self.cambiarPosicion()
	}
	
	method izquierda() {
		ultimaDireccion = "izquierda"
		image = "MotoRojaO.png"
		
		ultPosDeLaEstela = estela.last().position()
		ultPosMoto = position
		self.position(self.position().left(1))
		self.cambiarPosicion()
	}
	
	
}

/*
object motoRoja {
	var ultimaDireccion = "arriba"
	var imagen = "MotoRojaE.png"
	
	const est1 = new estelaRoja(position = game.at(position.x() - 1, position.y()))
	const est2 = new estelaRoja(position = game.at(est1.position().x() - 1, position.y()))
	const est3 = new estelaRoja(position = game.at(est2.position().x() - 1, position.y()))
	
	const property estela = [est1, est2, est3]
	var property ultPosDeEstela
	var property ultPosMoto
	
	
	method cambiarPosicion(){
		
			(estela.size() - 1.. 1).forEach{e => estela.get(e).position(estela.get(e - 1).position())}
			estela.first().position(ultPosMoto)
	}
	
	method arriba() {
		ultimaDireccion = "arriba"
		imagen = "MotoRojaN.png"
		
		if(position.y() < game.height() - 1 ) {
			ultPosDeEstela = estela.last().position()
		    ultPosMoto = position
			position = position.up(1)
			self.cambiarPosicion()
		}
	}
	
	method abajo() {
		ultimaDireccion = "abajo"
		imagen = "MotoRojaS.png"
		if(position.y() > 0 ) {
			ultPosDeEstela = estela.last().position()
		    ultPosMoto = position
			position = position.up(1)
			self.cambiarPosicion()
		}
	}
	
	method derecha() {
		ultimaDireccion = "derecha"
		imagen = "MotoRojaE.png"
		if(position.x() < game.width() -1 ) {
			ultPosDeEstela = estela.last().position()
		    ultPosMoto = position
			position = position.up(1)
			self.cambiarPosicion()
		}
	}
	
	method izquierda() {
		ultimaDireccion = "izquierda"
		imagen = "MotoRojaO.png"
		if(position.x() > 0 ) {
			ultPosDeEstela = estela.last().position()
		    ultPosMoto = position
			position = position.up(1)
			self.cambiarPosicion()
		}
	}
	
	method moverEnUltimaDireccion(){
		if(ultimaDireccion == "arriba"){
		self.arriba()
		}else if (ultimaDireccion == "derecha"){
			self.derecha()
		} else if (ultimaDireccion == "abajo"){
			self.abajo()
			}else {
			self.izquierda()
				}
	}
	
}

*/

/*
object motoAzul {
	var property position
	var ultimaDireccion = "derecha"
	var imagen = "MotoAzulE.png"
	
	method image() = imagen
	
	method position(unaPosicion) {
		position = unaPosicion
	}

	
	method arriba() {
		ultimaDireccion = "arriba"
		imagen = "MotoAzulN.png"
		if(position.y() < game.height() - 1 ) {
			position = position.up(1)
		}
	}
	
	method abajo() {
		ultimaDireccion = "abajo"
		imagen = "MotoAzulS.png"
		if(position.y() > 0 ) {
			position = position.down(1)
		}
	}
	
	method derecha() {
		ultimaDireccion = "derecha"
		imagen = "MotoAzulE.png"
		if(position.x() < game.width() -1 ) {
			position = position.right(1)
		}
	}
	
	method izquierda() {
		ultimaDireccion = "izquierda"
		imagen = "MotoAzulO.png"
		if(position.x() > 0 ) {
			position = position.left(1)
		}
	}
	
	method moverEnUltimaDireccion(){
		if(ultimaDireccion == "arriba"){
		self.arriba()
		}else if (ultimaDireccion == "derecha"){
			self.derecha()
		} else if (ultimaDireccion == "abajo"){
			self.abajo()
			}else {
			self.izquierda()
				}
	}
}
*/

class estelaRoja {
	var property position
	var imagen = "estelaRojaEstandar.png"
	
	method image() = imagen
	
	
}

class muro {
	var property position
	
	method image() = "muroUno.png"
}

object ultimaDireccionMRojo{
	var property ultimaDireccionRojo
	
}

object ultimaDireccionMAmarillo{
	var property ultimaDireccionAmarillo
	
}
