import personajes.*
import elementos.*

object ballesta{
    var municion = 10
    method potencia(){
        return 4
    }
    
    method usarArma(){
        if(municion > 0){
            municion -= 1
            return self.potencia()
        } else{
            return 0
        }
    }
    method estaCargada(){
        return municion > 0
    }
    method recargarArma(){
        municion = 10
    }
}
object jabalina{
    var estaCargada = true
    method potencia(){
        return 30
    }

    method usarArma(){
        if (estaCargada){
            estaCargada = false
            return self.potencia()
        }else{
            return 0
        }
    }
    method estaCargada(){
        return estaCargada
    } 
    method recargarArma(){
        estaCargada = true
    }
}