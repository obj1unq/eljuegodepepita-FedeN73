import wollok.game.*

object pepita {
	var property position = game.at(2,2)
	var energia = 100

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

}