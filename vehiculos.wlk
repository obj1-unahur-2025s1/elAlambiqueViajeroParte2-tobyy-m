object alambiqueVeloz {
    const rapido = true
    var combustible = 20
    const consumoPorViaje = 10
    const patente = ["AB123JK"]
    method puedeFuncionar() = combustible >= consumoPorViaje
    method desgaste() {
        combustible = combustible - consumoPorViaje
    }
    method rapido() = rapido
    method patenteValida() = patente.take(1) == "A"
    method velocidad() = 10
}

object antiguallaBlindada{
    const gangsters =["Pepe", "Juan", "Mario", "Felipe", "Carlos", "Pedro", "Cosme"]
    method puedeFuncionar() = gangsters.size() > 4
    method desgaste() {
        gangsters.remove(gangsters.get(gangsters.size()-1))
    }
    method subirGangster(nombreDeGanster) {
        gangsters.add(nombreDeGanster)
    }
    method bajarGangster() {
        gangsters.remove(gangsters.get(gangsters.size()-1))
    }
    method velocidad() = gangsters.sum({g=>g.size()})
    method rapido() = gangsters.size().between(0,5) || gangsters.size() >= 7
}

object superPerrari{

}

object antigualla {
    var gangsters = 6
    method puedeFuncionar() = gangsters.even()
    method rapido() = gangsters > 6
    method desgaste(){
        gangsters = gangsters -1
    }
    method patenteValida() = chatarra.rapido() 
    method velocidad()=5
}

object chatarra {
    var cañones = 10
    var municiones = "ACME"
    method puedeFuncionar() = municiones == "ACME" and cañones.between(6,12)
    method rapido() = municiones.size() < cañones
    method desgaste(){
        cañones = (cañones / 2).roundUp(0)//redondea hacia arriba
        if (cañones < 5 )
          municiones = municiones + " Obsoleto"
    }
    method patenteValida() = municiones.take(4) == "ACME" 
    method cañones() = cañones
    method velocidad()=15
}

object convertible{
    var convertido = antigualla
    method puedeFuncionar() = convertido.puedeFuncionar() 
    method rapido() = convertido.rapido()
    method desgaste(){
        convertido.desgaste()
    }
    method convertir(vehiculo){
        convertido = vehiculo
    }
    method patenteValida() = convertido.patenteValida()
    method velocidad()=convertido.velocidad()
}

object moto{
    method rapido() = true
    method puedeFuncionar() = not self.rapido()
    method desgaste() { }
    method patenteValida() = false
    method velocidad()=455

}