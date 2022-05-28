/*
Para poder agregar un nuevo accesorio al modelo, simplemente se requiere de crear
un nuevo objeto o clase, segun corresponda, en el archivo de accesorios
y codearle los mismos metodos que los accesorios existentes ya tienen, para que se
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