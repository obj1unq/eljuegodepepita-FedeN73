import wollok.game.*

object manzana {
	const base= 5
	var madurez = 1
	const position = game.at(4,5)

	method image() = "manzana.png"

	method position(){
		return position
	}
	
	method energiaQueOtorga() {
		return base * madurez	
	}
	
	method madurar() {
		madurez = madurez + 1
	}

}

object alpiste {

	method energiaQueOtorga() {
		return 20
	} 

}

