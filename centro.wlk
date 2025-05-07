import elAlambiqueViajero.*
import vehiculos.*
import destinos.*

object centro {
  var sede = buenosAires
  const inscriptos = []
  const rechazados = []
  method inscribir(vehiculo){
    if(sede.puedeLlegar(vehiculo)){
      inscriptos.add(vehiculo)
    }else{
      rechazados.add(vehiculo)
    }
  }
  method cambiarSede(nuevaSede){
    sede = nuevaSede
    const vehiculos = inscriptos + rechazados
    inscriptos.clear()
    rechazados.clear()
    vehiculos.forEach({vehiculo => self.inscribir(vehiculo)})
  }

  method irASede() {
    inscriptos.forEach({v => v.desgaste()})
  }

  method ganador(){
    return inscriptos.max({v => v.velocidad()})
  }

}