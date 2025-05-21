class Persona {
    var property peso = 100
    var property minutos = 5

    method validarKGQuePierde(kilosQuePierde) {
        if (peso - kilosQuePierde < 50){
            self.error("pierde demasiados kilos")
        }
    }

    method entrenar(unaRutina) {
        self.validarKGQuePierde(self.kilosQuePierde(unaRutina, minutos))
        peso = peso - self.kilosQuePierde(unaRutina, minutos)
    }

    method kilosQuePierde(rutinaAEntrenar, tiempo) {
        return rutinaAEntrenar.caloriasQueQuema(tiempo) / self.kilosPorCaloriaQuePierde()
    }

    method kilosPorCaloriaQuePierde() {
        return 7000
    }
}

object calamardo inherits Persona(peso = 60, minutos = 5){

}