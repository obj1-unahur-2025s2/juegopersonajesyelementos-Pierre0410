import personajes.*
import armas.*
object castillo{
    var defensa = 150

    method altura (){
        return 20
    }
    method defensa(){
        return defensa
    }
    method recibirAtaque(potencia){
        defensa = (defensa - potencia).max(0)
    }
    method recibirTrabajo(){
        defensa = (defensa + 20).min(200)
    }
    method valor(){return defensa *0.2}
}

object aurora{
    var estaViva = true
    method altura (){
        return 1
    }
    method recibirAtaque(potencia){
        if (potencia >=10) {
                estaViva = false
            }
        }
    method recibirTrabajo(){}
    method valor() {return 15}
    }


object tipa{
    var altura = 8
    method altura (){return altura}
    method recibirAtaque(potencia){}
    method recibirTrabajo(){self.crecer()}
    method crecer(){altura += 1}
    method valor() {return self.altura() * 2}

}


