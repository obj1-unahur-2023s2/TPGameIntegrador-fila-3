import wollok.game.*

object motoRoja {
	var position
	
	method image() = "MotoRoja.png"
	method position(unaPosicion) {
		position = unaPosicion
	}
	method position() = position
	
	
	method arriba() {
		if(position.y() < game.height() - 1 ) {
			position = position.up(1)
		}
	}
	
	method abajo() {
		if(position.y() > 0 ) {
			position = position.down(1)
		}
	}
	
	method derecha() {
		if(position.x() < game.width() -1 ) {
			position = position.right(1)
		}
	}
	
	method izquierda() {
		if(position.x() > 0 ) {
			position = position.left(1)
		}
	}
	
}

object motoAmarilla {
	var position
	var ultimaDireccion = "arriba"
	
	method image() = "MotoAmarilla.png"
	method position(unaPosicion) {
		position = unaPosicion
	}
	
	method position() = position
	
	method arriba() {
		//ultimaDireccion = "arriba"
		
		if(position.y() < game.height() - 1 ) {
			position = position.up(1)
		}
	}
	
	method abajo() {
		if(position.y() > 0 ) {
			position = position.down(1)
		}
	}
	
	method derecha() {
		ultimaDireccion = "derecha"
		
		if(position.x() < game.width() -1 ) {
			position = position.right(1)
		}
	}
	
	method izquierda() {
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

object ultimaDireccionMRojo{
	var property ultimaDireccionRojo
	
}

object ultimaDireccionMAmarillo{
	var property ultimaDireccionAmarillo
	
}
