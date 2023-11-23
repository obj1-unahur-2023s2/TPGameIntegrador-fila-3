import wollok.game.*
import tron.*

class Jugador {
	var property ultimaDireccion
	var property position
	const property color
	var property vidas = 5
	var property image = "Moto" + color + ultimaDireccion + ".png"
	
	
	
	const estel1 = new Estela(colorEstela = color, position = game.at(position.x() -1, position.y()))
	const estel2 = new Estela(colorEstela = color, position = game.at(estel1.position().x() -1, estel1.position().y()))
	const estel3 = new Estela(colorEstela = color, position = game.at(estel2.position().x() -1, estel2.position().y()))
	const estel4 = new Estela(colorEstela = color,position = game.at(estel3.position().x() -1, estel3.position().y()))
	const estel5 = new Estela(colorEstela = color,position = game.at(estel4.position().x() -1, estel4.position().y()))
	const estel6 = new Estela(colorEstela = color,position = game.at(estel5.position().x() -1, estel5.position().y()))
	const estel7 = new Estela(colorEstela = color,position = game.at(estel6.position().x() -1, estel6.position().y()))
	const estel8 = new Estela(colorEstela = color,position = game.at(estel7.position().x() -1, estel7.position().y()))
	const estel9 = new Estela(colorEstela = color,position = game.at(estel8.position().x() -1, estel8.position().y()))
	const estel10 = new Estela(colorEstela = color,position = game.at(estel9.position().x() -1, estel9.position().y()))
	const estel11 = new Estela(colorEstela = color,position = game.at(estel10.position().x() -1, estel10.position().y()))
	const estel12 = new Estela(colorEstela = color,position = game.at(estel11.position().x() -1, estel11.position().y()))
	const estel13 = new Estela(colorEstela = color,position = game.at(estel12.position().x() -1, estel12.position().y()))
	const estel14 = new Estela(colorEstela = color,position = game.at(estel13.position().x() -1, estel13.position().y()))
	const estel15 = new Estela(colorEstela = color,position = game.at(estel14.position().x() -1, estel14.position().y()))
	//const estel16 = new Estela(colorEstela = color,position = game.at(estel15.position().x() -1, estel15.position().y()))
	//const estel17 = new Estela(colorEstela = color,position = game.at(estel16.position().x() -1, estel16.position().y()))
	//const estel18 = new Estela(colorEstela = color,position = game.at(estel17.position().x() -1, estel17.position().y()))
	//const estel19 = new Estela(colorEstela = color,position = game.at(estel18.position().x() -1, estel18.position().y()))
	//const estel20 = new Estela(colorEstela = color,position = game.at(estel19.position().x() -1, estel19.position().y()))
	
	const property estela = [estel1, estel2, estel3, estel4 , estel5 , estel6 ,estel7 , estel8, estel9 , estel10
		,estel11 , estel12 , estel13 ,estel14 , estel15 /* ,estel16 ,estel17 ,estel18 ,estel19 ,estel20*/]
	
	var property ultPosDeLaEstela = estela.last().position()
	var property ultPosMoto = position
	
	
	method tieneVidas() {return vidas != 0}
	
	method agregarEstela(unaEstela) {
		estela.add(unaEstela)
	}
	
	method cambiarPosicionEstela() {
		(estela.size() - 1.. 1).forEach{e => estela.get(e).position(estela.get(e - 1).position())}
		estela.first().position(ultPosMoto)
	}
	
	method mover(direccion) {
		ultimaDireccion = direccion
		image = "Moto" + color + direccion + ".png"
		
		ultPosDeLaEstela = estela.last().position()
		ultPosMoto = position
		if(direccion == "Arriba") {
			if(position.y() < game.height() - 3 ){
			self.position(self.position().up(1))
		    self.cambiarPosicionEstela()
			}else if(position.y() < game.height() - 2 ){
				
			}
		}
		else if(direccion == "Abajo") {
			if(position.y() > 1 ){
			self.position(self.position().down(1))
		    self.cambiarPosicionEstela()
			}	
		}
		else if(direccion == "Derecha") {
			if(position.x() < game.width() - 2 ){
			self.position(self.position().right(1))
		    self.cambiarPosicionEstela()
			}
		}
		else if(position.x() > 1 )  {
			self.position(self.position().left(1))
		    self.cambiarPosicionEstela()
		}
	}
}


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
	const jugadorLigado
	const colorVida
	var property position
	const vida1 = new Corazon(color = colorVida, position = game.at(position.x(), position.y() - 1))
	const vida2 = new Corazon(color = colorVida, position = game.at(position.x() + 1, position.y() - 1))
	const vida3 = new Corazon(color = colorVida, position = game.at(position.x() +2, position.y() - 1))
	const vida4 = new Corazon(color = colorVida, position = game.at(position.x() + 3, position.y() - 1))
	const vida5 = new Corazon(color = colorVida, position = game.at(position.x() +4, position.y() - 1))
	
	const property vidas = [vida1, vida2, vida3, vida4, vida5]
	
	method perderVida() {
		if(vidas.size() > 1) {
			vidas.remove(vidas.last())
		}else{
			gameOver.terminarJuego()
			
		}
	}
}


object gameOver{
	var property image = "img/gameOverjugador1.png"
	const property position = game.origin()	
	method terminarJuego(){
		tron.finDeJuego()
	}
}
