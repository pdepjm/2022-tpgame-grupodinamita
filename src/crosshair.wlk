import wollok.game.*

object crosshair{
	var property position = game.at(0,0)
	
	var property score = 0
	
	method image() = "crosshair.png"
	
	method score(newScore){
		score = newScore
		
		if(score < 0){score = 0}
	}
	
	method scoreDisplay(){
		game.say(self, "Current score: " + score + ".")
	}
	
	method justScored(additionalScore){
		self.score(self.score() + additionalScore)
		self.scoreDisplay()
	}	
	
	method move(newPos) = self.position(newPos)
}