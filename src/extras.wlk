import pepita.*

object silvestre{
    const presa = pepita
    
    method position() = game.at(self.positionx(),0)

    method image() = "silvestre.png"

    method positionx(){
        return if(presa.position().x() > 3) presa.position().x() else 3
    }
}

