/*
Para poder agregar un nuevo accesorio al modelo, simplemente hay que crear
un nuevo objeto o clase, segun corresponda, en el archivo de accesorios
y este éste entienda los mismo mensajes que los accesorios ya existentes, para que se
respete el polimorfismo/contrato.
*/

class Farolito {
	method peso() = 0.5
	method carga() = 0
	method esLuminoso() = true
}

class Canasto {
	var property volumen
	
	method peso() = volumen / 10
	method carga() = volumen * 2
	method esLuminoso() = false
}

class MorralDeBici {
	var property largo
	var property tieneOjoDeGato
	
	method peso() = 1.2
	method carga() = largo / 3
	method esLuminoso() = tieneOjoDeGato
}