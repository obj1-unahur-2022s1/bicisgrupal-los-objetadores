import accesorios.*

class Bicicleta {
	var property rodado
	var property largo
	var property marca
	const accesorios = []
	
	method altura() = rodado * 2.5 + 15
	method velocidadDeCrucero() = if (largo > 120) {rodado + 6} else {rodado + 2}
	method carga() = accesorios.sum({ a => a.carga() })
	method pesoTotalAccesorios() = accesorios.sum({ a => a.peso() })
	method peso() = rodado / 2 + self.pesoTotalAccesorios()
	method tieneLuz() = accesorios.any({ a => a.esLuminoso() })
	method cantidadDeAccesoriosLivianos() = accesorios.count({ a => a.peso() < 1 })
	method tieneAccesorios() = not accesorios.isEmpty()
	method accesorios(unAccesorio) { accesorios.add(unAccesorio) }
	method quitarAccesorios(unAccesorio) { accesorios.remove(unAccesorio) }
	method accesorios() = accesorios 
}
