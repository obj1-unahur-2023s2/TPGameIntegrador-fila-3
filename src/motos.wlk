import wollok.game.*

class Jugador {
	var ultimaDireccion
	var property position
	const color
	var property image = "Moto" + color + ultimaDireccion + ".png"
	
	const estel1 = new Estela(colorEstela = color, position = game.at(position.x() -1, position.y()))
	const estel2 = new Estela(colorEstela = color, position = game.at(estel1.position().x() -1, estel1.position().y()))
	const estel3 = new Estela(colorEstela = color, position = game.at(estel2.position().x() -1, estel2.position().y()))
	
	const property estela = [estel1, estel2, estel3]
	
	var property ultPosDeLaEstela = estela.last().position()
	var property ultPosMoto = position
	
	method agregarEstela(unaEstela) {
		estela.add(unaEstela)
	}
	
	method cambiarPosicion() {
		(estela.size() - 1.. 1).forEach{e => estela.get(e).position(estela.get(e - 1).position())}
		estela.first().position(ultPosMoto)
	}
	
	method mover(direccion) {
		ultimaDireccion = direccion
		image = "Moto" + color + direccion + ".png"
		
		ultPosDeLaEstela = estela.last().position()
		ultPosMoto = position
		if(direccion == "Arriba") {
			self.position(self.position().up(1))
		    self.cambiarPosicion()
		}
		else if(direccion == "Abajo") {
			self.position(self.position().down(1))
		    self.cambiarPosicion()
		}
		else if(direccion == "Derecha") {
			self.position(self.position().rigth(1))
		    self.cambiarPosicion()
		}
		else {
			self.position(self.position().left(1))
		    self.cambiarPosicion()
		}
	}
}


/*object jugador2 {
	var ultimaDireccion
	var property position = (game.at(70 ,30))
	var property image = "MotoAzulN.png"
	
	const estel1 = new EstelaAzul(position = game.at(position.x() -1, position.y()))
	const estel2 = new EstelaAzul(position = game.at(estel1.position().x() -1, estel1.position().y()))
	const estel3 = new EstelaAzul(position = game.at(estel2.position().x() -1, estel2.position().y()))
	const estel4 = new EstelaAzul(position = game.at(estel3.position().x() -1, estel3.position().y()))
	const estel5 = new EstelaAzul(position = game.at(estel4.position().x() -1, estel4.position().y()))
	const estel6 = new EstelaAzul(position = game.at(estel5.position().x() -1, estel5.position().y()))
	const estel7 = new EstelaAzul(position = game.at(estel6.position().x() -1, estel6.position().y()))
	const estel8 = new EstelaAzul(position = game.at(estel7.position().x() -1, estel7.position().y()))
	const estel9 = new EstelaAzul(position = game.at(estel8.position().x() -1, estel8.position().y()))
	const estel10 = new EstelaAzul(position = game.at(estel9.position().x() -1, estel9.position().y()))
	const estel11 = new EstelaAzul(position = game.at(estel10.position().x() -1, estel10.position().y()))
	const estel12 = new EstelaAzul(position = game.at(estel11.position().x() -1, estel11.position().y()))
	const estel13 = new EstelaAzul(position = game.at(estel12.position().x() -1, estel12.position().y()))
	const estel14 = new EstelaAzul(position = game.at(estel13.position().x() -1, estel13.position().y()))
	
	const property estela = [estel1, estel2, estel3, estel4 , estel5 , estel6 ,estel7 , estel8, estel9 , estel10
		,estel11 , estel12 , estel13 ,estel14 ]
	
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
*/

class Estela {
	const colorEstela
	var property position
	const image = "estela" + colorEstela + "Estandar.png"
	
	method image() = image
}

class Corazon {
	const color
	var property position
	const image = "corazon" + color + ".png"
	
	method image() = image
}

class Vidas {
	const colorVida
	var property position
	const vida1 = new Corazon(color = colorVida, position = game.at(position.x(), position.y() - 1))
	const vida2 = new Corazon(color = colorVida, position = game.at(position.x() + 1, position.y() - 1))
	const vida3 = new Corazon(color = colorVida, position = game.at(position.x() +2, position.y() - 1))
	
	const property vidas = [vida1, vida2, vida3]
	
	method perderVida() {
		if(vidas.size() > 1) {
			vidas.remove(vidas.last())
		}
	}
}
