import wollok.game.*

object timer{
	var secondsLeft = 5
	
	method seconds() = secondsLeft
	
	method minus(){
		secondsLeft = secondsLeft - 1
	}
	
	method outOfTime() = secondsLeft == 0
	
	method initiate(){
		game.onTick(1000, "Timer", {timer.minus()})
	}
	
	method finish(){
		game.removeTickEvent("Timer")
	}
}