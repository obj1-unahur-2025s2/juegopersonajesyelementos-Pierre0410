import elementos.*
import armas.*
object luisa{
//jugadora
  var jugador = floki
    method aparece(elemento){
        jugador.encontrar(elemento)
    }
    method cambiarJugador(nuevoJugador){
        jugador = nuevoJugador
    }
    method jugadorActual(){
        return jugador
    }
}

object floki{
//guerrero
  var arma = jabalina

  method encontrar(elemento) {
    if (arma.estaCargada()){
      elemento.recibirAtaque(arma.potencia())
      arma.usarArma()
    }
  }
  method cambiarArma(nuevaArma) {
    arma = nuevaArma
  }
}

object mario{
//trabajador
  var valorRecolectado = 0
  var elementoUltimo = null  
  method encontrar(elemento) {
    elemento.recibirTrabajo()
    valorRecolectado += elemento.valor()
    elementoUltimo = elemento
  }
  method valorRecolectado(){
    return valorRecolectado
  }
  method esFeliz(){
    return valorRecolectado > 50 || elementoUltimo.altura() >= 10
  }
  method cambiarUltimoElemento(elemento) {
    elementoUltimo = elemento
  }
  method ultimoElemento(){
    return elementoUltimo
  }
}
