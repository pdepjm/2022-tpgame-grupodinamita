import wollok.game.*
import gamemode.*
import menu.*

class Dot{
	var property image = "dot.png"
	var property text
}

object easy_dot inherits Dot(text = "Easy Mode."){
	method position() = game.at(3, 6)
	
	method hitBy(_){
		game.removeVisual(self)
		game.removeVisual(hard_dot)
		theGame.timerMod(40)
		theGame.initiate(1.5)
	}
}

object hard_dot inherits Dot(text = "Hard Mode."){
	method position() = game.at(5, 6)
	
	method hitBy(_){
		game.removeVisual(self)
		game.removeVisual(easy_dot)
		theGame.timerMod(30)
		theGame.initiate(0.6)
	}
}

object start_dot inherits Dot(text = "Press here to begin."){
	method position() = game.at(game.width()/2, 7)
	
	method hitBy(_){
		menu.gamemodeSelection()
		game.removeVisual(self)
		game.removeVisual(quit_dot)
	}
}

object quit_dot inherits Dot(text = "Press here to quit."){
	method position() = game.at(game.width()/2, 5)
	
	method hitBy(_){
		game.stop()
	}
}

object return_dot inherits Dot(text = "Press here to return to main menu."){
	method position() = game.at(game.width()/2, 2)
	
	method hitBy(_){
		game.clear()
		menu.gameInit()
	}
}