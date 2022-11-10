import wollok.game.*
import crosshair.*
import target.*
import buttons.*
import gamemode.*
import UI.*

object menu{
	method gameInit(){
		crosshair.instantiate()
		crosshair.clear()
	
		game.addVisual(start_dot)
		game.addVisual(quit_dot)
	}
	
	method gamemodeSelection(){
		game.addVisual(easy_dot)
		game.addVisual(hard_dot)
	}
	
	method displayResult(){
		game.addVisual(displayUI)
		game.addVisual(return_dot)
	}
	
	
}