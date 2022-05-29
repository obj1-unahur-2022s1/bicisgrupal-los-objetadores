import bicicleta.*
import accesorios.*

class Deposito {
	const bicicletas = []
	
	method bicicletas() = bicicletas
	method bicisMasRapidas() = bicicletas.filter({ b => b.velocidadDeCrucero() > 25 })
	method marcas() = bicicletas.map({ b => b.marca() }).asSet()	
	method esNocturno() = bicicletas.all({ b => b.tieneLuz() })
	method puedeLLevarCarga(unaCarga) = bicicletas.any({ b => b.carga() > unaCarga })
	method guardarBici(unaBici) { bicicletas.add(unaBici) }
	method biciMasRapida() = bicicletas.max({ b => b.velocidadDeCrucero() })
	method marcaBiciMasRapida() = self.biciMasRapida().marca()
	method bicisLargas() = bicicletas.filter({ b => b.largo() > 170 })
	method cargaTotalBicisLargas() = self.bicisLargas().sum({ b => b.carga() })
	method cantBicisSinAccesorios() = bicicletas.count({ b => not b.tieneAccesorios() })
	method bicisCompanierasEnDepositoDe(unaBici) = 
		bicicletas.filter({ b => b.marca() == unaBici.marca() 
			and (b.largo() - unaBici.largo()).abs() <=  10
			and b != unaBici
		})
	// Desafios
	method hayBicisCompanieras() = 
		bicicletas.any({ b => not self.bicisCompanierasEnDepositoDe(b).isEmpty() })
	/*
	method parejasDeCompanieras() { 
		const listaBicisCompanieras = [] 	
		bicicletas.forEach({ b => 
			if (not self.bicisCompanierasEnDepositoDe(b).isEmpty()) {
				listaBicisCompanieras.addAll(self.bicisCompanierasEnDepositoDe(b))	
			}
		})
		return listaBicisCompanieras	
	}
	*/
	method posicionPrimerBiciConLuz() = (0..bicicletas.size()-1).find({
		b => bicicletas.get(b).tieneLuz()
	})
	method seHizoLaLuz() = 
		(self.posicionPrimerBiciConLuz()..bicicletas.size()-1).all({
			b => bicicletas.get(b).tieneLuz()
		})	
}

