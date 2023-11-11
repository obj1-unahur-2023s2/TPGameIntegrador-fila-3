import wollok.game.*
import juego.*
import mutablePosition.*

object menu {
	const h = 20// en celdas
	const w = 35 // en celdas
	//onst cellsize = 30 // pixeles

	
	method inicializar(){
		//inicar menu con el mismo w y h 
		game.height(h)
		game.width(w)
		//game.cellSize(cellsize)
		
		game.boardGround("img/fondo.png")
		game.title("TronGame")
		
		
		
		game.addVisual(fondoMenu)
		
		//game.addVisual(controles)// agregar player1 player 2
		// controles
		//
		
		game.addVisual(player1)
		game.addVisual(player2)
		game.addVisual(continue)
		
		keyboard.f().onPressDo{
			game.clear()
			juego.iniciar()
		//keyboard.space().onPressDo{self.configurar}
}
	/*method mostrarMenu(){
		game.clear()
		if (!game.hasVisual(home)) game.addVisual(home)
		
		keyboard.s().onPressDo {
			
		}
	}
	method ocultarMenu(){
		if(game.hasVisual(home))
			game.removeVisual(home)
	}
	* 
}*/
	
}
}
class Imagen{
	const property image
	const property position
}

object fondoMenu inherits Imagen(image= "img/tronlegacy.png", position= new MutablePosition(x=0, y=4)){}

//object controles inherits Imagen(image = "img/controles.png", position = new MutablePosition(x = 10, y = 6)){}
object player1 inherits Imagen(image= "img/flechas.png", position= new MutablePosition(x=4, y=3)){}

object player2 inherits Imagen(image= "img/flecha2.png", position= new MutablePosition(x=20, y=3)){}

object moto inherits Imagen(image= "img/moto1.png", position= new MutablePosition(x=8, y=3)){}

object continue inherits Imagen(image= "img/presioneF.png", position= new MutablePosition(x=11, y=1)){}

