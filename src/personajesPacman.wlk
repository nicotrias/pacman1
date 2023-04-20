import wollok.game.*

object pacman {
	var property image = "pacman.png"
	var property position = game.origin()
	var vidas = 3
	
	method perderVida(){
		vidas -= 1
		position = game.origin()
	}
	
	method chocarCon(rival){
		self.perderVida()
		rival.position(game.center())	
	}

	method vidas() = vidas
	
}

object fantasma1{
	var property image = "rival1.png"
	var property position = game.at(3,7)
	
	method acercarseA(personaje){
		var posPacman = personaje.position()
		var newX = position.x() + if (posPacman.x() > position.x()){1}else if(posPacman.x() == position.x()){0} else{-1}
		var newY = position.y() + if (posPacman.y() > position.y()){1}else if(posPacman.y() == position.y()){0} else{-1}
		
		position = game.at(newX,newY)
		
		
	}
	
	
}