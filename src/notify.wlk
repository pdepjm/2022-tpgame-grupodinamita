import timer.*
import wollok.game.*

class Notification {
	var property position
	
	method image() = "dot.png"
	
	
	method position() = position
	method position(newPos){
		position = newPos
	}
}
