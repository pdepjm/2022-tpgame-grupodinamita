import wollok.game.*
import buttons.*
import target.*
import crosshair.*
import menu.*
import UI.*


object theGame{
	var listTargets = []
	
	var timer = 0
	
	method timerMod(_timer){
		timer = _timer
	}
	
	method removeTarget(target){
		listTargets.remove(target)
	}
	
	method spawnNewTarget() {
		const newTarget = new Target_Green(position = game.at(0.randomUpTo(game.width()).truncate(0), 0.randomUpTo(game.height()).truncate(0)))
		listTargets.add(newTarget)
		game.addVisual(newTarget)
		newTarget.spawn()
	}

	method currentTime() = timer
	
	method initiate(s){
		game.addVisual(limitedTimeUI)
		game.onTick(1000, "Timer", {
			self.targetActivity()
		})

		game.onTick(s * 1500, "Spawning", {
			self.spawnNewTarget()
		})
	}
	
	method targetActivity() {
		timer -= 1
		if(timer < 0){
			listTargets.forEach{ent => ent.despawn()}
			self.finish()
		}
	}
	
	method finish(){
		game.removeTickEvent("Timer")
		game.removeTickEvent("Spawning")
		game.removeVisual(limitedTimeUI)
		menu.displayResult()
	}
}
