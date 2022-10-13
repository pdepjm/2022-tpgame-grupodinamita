import wollok.game.*

class Objective{
	var property position
	var property worth = 300
	
	method scoreWorth() = worth
	method scoreChange(newScore){
		worth = newScore
	}
	
	method reduceWorth(){
		worth = worth - 1
	}
	
	method image() = "circle.png"
	
	method randomize(pos_x, pos_y){
		position = game.at(pos_x, pos_y)
		
		self.scoreChange(300)
	}
}