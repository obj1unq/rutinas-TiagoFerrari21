class Rutina {
    method caloriasQueQuema(tiempo) {
        return 100 * (tiempo - self.tiempoDescanso(tiempo)) * self.intensidad()
    }

    method tiempoDescanso(tiempo) {
        return if (tiempo > 20) {5} 
                else 2
    }

    method intensidad() {
        return 1.2
    }
}

class Running inherits Rutina(){
}

class Maraton inherits Running() {
    
    override method caloriasQueQuema(tiempo) {
        return super(tiempo)*2
    }

}

class Remo inherits Rutina() {
   
    override method intensidad(){
        return 1.3
    }

    override method tiempoDescanso(tiempo) {
        return tiempo/5
    }
}

class RemoDeCompeticion inherits Remo () {
    override method intensidad(){
        return 1.7
    }

    override method tiempoDescanso(tiempo){
        return (super(tiempo) - 3).max(2)
    }
}

object correrEnLaPlaya inherits Running() {

}

object maratonDeBA inherits Maraton() {
    override method intensidad(){
        return 1.5
    }
}

object remarEnElDelta inherits Remo() {

}

object remarEnElCaminoDeLosRemeros inherits RemoDeCompeticion() {

}