import wollok.game.*

object gameManager {
 	const cellsize = 30 // pixeles
	const height = 25 // en celdas
	const width = 25 // en celdas
	
	const piecelen = 120 // pixeles de ancho de cada piecita (15puzzle)
 	
 	method inicializar() {
		game.cellSize(cellsize)
		game.height(height)
		game.width(width)
		game.boardGround("img/fondo.png")
		game.title("PIGames")
 		//hace la mezcla acá, es mucho más rápido para iniciarlo
 	}
 	
 	method mostrarMenu() {
 		game.clear()
 		if (!game.hasVisual(home)) game.addVisual(home)
 		// Eventos para iniciar cada juego
 		keyboard.s().onPressDo {
 			//iniciar juego tron
 		}
 	}
 	
 	method ocultarMenu() {
 		if (game.hasVisual(home))
 			game.removeVisual(home)
 	}
 	
 }

 object tituloTron {
	const property image = "img/TronAnimation.gif"
	const property position = game.at(1,13)
}