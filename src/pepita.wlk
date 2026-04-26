import src.randomizer.*
import wollok.game.*
import direcciones.*

object pepita {
	var position = game.at(2,2)
	var energia = 100

	method position(){
		return position
	}

	method image() = "pepita.png"

	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
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
}