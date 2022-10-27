import wollok.game.*
import gamemode.*

class Target_Green{
	var property position
	
	var property points = 30
	
	method image() = "green_circle.png"
	
	method move(newPos) = self.position(newPos)
	
	method hitBy(aCrosshair){
		aCrosshair.scoreMod((points + 10).min(30))
		self.despawn()
	}
	
	method spawn(){
		game.onTick(166, "S1", {
			points -= 1
			if(points < 0){
				game.removeTickEvent("S1")
				self.despawn()
			}
		})	
	}
	
	method despawn(){
		theGame.removeTarget(self)
		if(game.hasVisual(self)){game.removeVisual(self)}
	}
}
