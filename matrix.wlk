
object neo {
  var energia = 100
  var vitalidad = energia /10
  method esElegido() = true

  method saltar(){
    energia = energia /2
  }

    method vitalidad() = vitalidad 
}

object morfeo {
  method esElegido() = false
  var vitalidad = 8
  var estaCansado = false 

  method saltar() {
    estaCansado = not estaCansado
    vitalidad = (vitalidad-1).max(0)
  }

  method vitalidad() = vitalidad
}

object trinity {
  method vitalidad() = 0
  method esElegido() = false
  method saltar(){}
}

object nave {
    const pasajeros = [neo, morfeo, trinity]

    method cantidadPasajeros() {
     return pasajeros.size()
    }

    method elPasajeroConMasVitalidad() {
        return pasajeros.max({unPasajero => unPasajero.vitalidad()}).vitalidad()
    }
}