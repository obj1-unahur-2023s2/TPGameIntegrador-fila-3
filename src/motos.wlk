import wollok.game.*

object jugador1 {
	var ultimaDireccion
	var property position = game.center()
	var property image = "MotoRojaN.png"
	
	const estel1 = new EstelaRoja(position = game.at(position.x() -1, position.y()))
	const estel2 = new EstelaRoja(position = game.at(estel1.position().x() -1, estel1.position().y()))
	const estel3 = new EstelaRoja(position = game.at(estel2.position().x() -1, estel2.position().y()))
	const estel4 = new EstelaRoja(position = game.at(estel3.position().x() -1, estel3.position().y()))
	const estel5 = new EstelaRoja(position = game.at(estel4.position().x() -1, estel4.position().y()))
	const estel6 = new EstelaRoja(position = game.at(estel5.position().x() -1, estel5.position().y()))
	const estel7 = new EstelaRoja(position = game.at(estel6.position().x() -1, estel6.position().y()))
	const estel8 = new EstelaRoja(position = game.at(estel7.position().x() -1, estel7.position().y()))
	const estel9 = new EstelaRoja(position = game.at(estel8.position().x() -1, estel8.position().y()))
	
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
		if(position.y() < game.height() - 1 ) {
		self.position(self.position().up(1))
		self.cambiarPosicion()
		}
	}
	
	method abajo() {
		ultimaDireccion = "abajo"
		image = "MotoRojaS.png"
		
		ultPosDeLaEstela = estela.last().position()
		ultPosMoto = position
		if(position.y() > 0 ) {
		self.position(self.position().down(1))
		self.cambiarPosicion()
		}
	}
	
	method derecha() {
		ultimaDireccion = "derecha"
		image = "MotoRojaE.png"
		
		ultPosDeLaEstela = estela.last().position()
		ultPosMoto = position
		if(position.x() < game.width() -1 ) {
		self.position(self.position().right(1))
		self.cambiarPosicion()
		}
	}
	
	method izquierda() {
		ultimaDireccion = "izquierda"
		image = "MotoRojaO.png"
		
		ultPosDeLaEstela = estela.last().position()
		ultPosMoto = position
		if(position.x() > 0 ) {
		self.position(self.position().left(1))
		self.cambiarPosicion()
		}
	}
	
	
}


object jugador2 {
	var ultimaDireccion
	var property position = game.center()
	var property image = "MotoAzulN.png"
	
	const estel1 = new EstelaRoja(position = game.at(position.x() -1, position.y()))
	const estel2 = new EstelaRoja(position = game.at(estel1.position().x() -1, estel1.position().y()))
	const estel3 = new EstelaRoja(position = game.at(estel2.position().x() -1, estel2.position().y()))
	const estel4 = new EstelaRoja(position = game.at(estel3.position().x() -1, estel3.position().y()))
	const estel5 = new EstelaRoja(position = game.at(estel4.position().x() -1, estel4.position().y()))
	const estel6 = new EstelaRoja(position = game.at(estel5.position().x() -1, estel5.position().y()))
	const estel7 = new EstelaRoja(position = game.at(estel6.position().x() -1, estel6.position().y()))
	const estel8 = new EstelaRoja(position = game.at(estel7.position().x() -1, estel7.position().y()))
	const estel9 = new EstelaRoja(position = game.at(estel8.position().x() -1, estel8.position().y()))
	
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
		image = "MotoAzulN.png"
		
		ultPosDeLaEstela = estela.last().position()
		ultPosMoto = position
		if(position.y() < game.height() - 1 ) {
			self.position(self.position().up(1))
			self.cambiarPosicion()
		}
	}
	
	method abajo() {
		ultimaDireccion = "abajo"
		image = "MotoAzulS.png"
		
		ultPosDeLaEstela = estela.last().position()
		ultPosMoto = position
		if(position.y() > 0 ) {
		self.position(self.position().down(1))
		self.cambiarPosicion()
		}
	}
	
	method derecha() {
		ultimaDireccion = "derecha"
		image = "MotoAzulE.png"
		
		ultPosDeLaEstela = estela.last().position()
		ultPosMoto = position
		if(position.x() < game.width() -1 ) {
		self.position(self.position().right(1))
		self.cambiarPosicion()
		}
	}
	
	method izquierda() {
		ultimaDireccion = "izquierda"
		image = "MotoAzulO.png"
		
		ultPosDeLaEstela = estela.last().position()
		ultPosMoto = position
		if(position.x() > 0 ) {
		self.position(self.position().left(1))
		self.cambiarPosicion()
		}
	}
	
	
}


class EstelaRoja {
	var property position
	var imagen = "estelaRojaEstandar.png"
	
	method image() = imagen
	
	
}

class Muro {
	var property position
	
	method image() = "muroUno.png"
}

object ultimaDireccionMRojo{
	var property ultimaDireccionRojo
	
}

object ultimaDireccionMAmarillo{
	var property ultimaDireccionAmarillo
	
}
