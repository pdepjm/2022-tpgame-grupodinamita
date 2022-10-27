import wollok.game.*

class Target_Green{
	var property position
	
	method image() = "green_circle.png"
	
	method move(newPos) = self.position(newPos)
	
	method hit(){
		game.removeVisual(self)
	}
}
