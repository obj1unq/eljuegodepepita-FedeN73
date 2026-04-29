import src.randomizer.*
import wollok.game.*
import direcciones.*
import extras.*

object pepita {
	const perseguidor = silvestre
	var position = game.at(2,2)
	var energia = 100

	method position(){
		return position
	}

	method image() = "pepita-" + self.estado() + ".png" 

	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
		game.removeVisual(comida)
	}

	method volar(kms) {
		energia = energia - 10 - kms 
	}
	
	method energia() {
		return energia
	}

	method mover(direccion){
		position = direccion.siguiente(position)
	}

	method estado(){
		return if(self.atrapada()) "gris" else "normal"
	}

	method atrapada() = position == perseguidor.position()

	method color() = "008000"

	method text() = energia

}