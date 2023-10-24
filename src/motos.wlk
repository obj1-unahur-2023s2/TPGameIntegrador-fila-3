import wollok.game.*

object motoRoja {
	var property position
	var ultimaDireccion = "arriba"
	var imagen = "MotoRojaE.png"
	
	method image() = imagen
	
	method arriba() {
		ultimaDireccion = "arriba"
		imagen = "MotoRojaN.png"
		if(position.y() < game.height() - 1 ) {
			position = position.up(1)
		}
	}
	
	method abajo() {
		ultimaDireccion = "abajo"
		imagen = "MotoRojaS.png"
		if(position.y() > 0 ) {
			position = position.down(1)
		}
	}
	
	method derecha() {
		ultimaDireccion = "derecha"
		imagen = "MotoRojaE.png"
		if(position.x() < game.width() -1 ) {
			position = position.right(1)
		}
	}
	
	method izquierda() {
		ultimaDireccion = "izquierda"
		imagen = "MotoRojaO.png"
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

object lineaDeLuzRoja {
	var property position
	
	method image() = "estelaRojaEstandar.png"
	
	
}

object ultimaDireccionMRojo{
	var property ultimaDireccionRojo
	
}

object ultimaDireccionMAmarillo{
	var property ultimaDireccionAmarillo
	
}
