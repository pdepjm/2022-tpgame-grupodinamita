import wollok.game.*

object crosshair{
	var property position = game.at(0,0)
	
	var property score = 0
	
	method image() = "crosshair.png"
	
	method move(newPos) = self.position(newPos)
	
	method shoot(){
		if(game.colliders(self) != []){
			game.uniqueCollider(self).hit()
		}
	}
}