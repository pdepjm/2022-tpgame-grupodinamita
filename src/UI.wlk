import wollok.game.*
import gamemode.*
import crosshair.*

class UI{
	var property position
	
	method text() = ""
}

object limitedTimeUI inherits UI(position = game.at(game.width()/2, 8)){
	override method text() = "Time Remaining: " + theGame.currentTime()
	
	method hitBy(_){
		
	}
}

object displayUI inherits UI(position = game.center()){
	override method text() = "Final Score: " + crosshair.score()
}