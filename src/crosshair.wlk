import wollok.game.*

object crosshair{
	var property position = game.center()
	
	var property score = 0
	
	method instantiate(){
			if(!game.hasVisual(self)){
				game.addVisual(self)
			}
			
			keyboard.right().onPressDo{self.move(self.position().right(1))}
			keyboard.left().onPressDo{self.move(self.position().left(1))}
			keyboard.up().onPressDo{self.move(self.position().up(1))}
			keyboard.down().onPressDo{self.move(self.position().down(1))}
			keyboard.enter().onPressDo{self.shoot()}
	}
	
	method image() = "crosshair.png"
	method text() = "(" + score + ")"
	
	method move(newPos) = self.position(newPos)
	
	method scoreMod(newScore){
		score += newScore
	}
	
	method getScore() = score
	
	method clear(){
		score = 0
	}
	
	method shoot(){
		if(game.colliders(self) != []){
			game.colliders(self).forEach{o => o.hitBy(self)}
		}
	}
}