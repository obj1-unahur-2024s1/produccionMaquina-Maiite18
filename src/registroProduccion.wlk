object registroProduccion {
	var registro = []
	
	method registrarCantidad(cantidad){registro.add(cantidad)}
	
	method algunDiaSeProdujo(cantidad) = registro.any({x=>x == cantidad})
	
	method maximoValorDeProduccion() = registro.max()
	
	method valoresDeProduccionPares() = registro.filter({x=>x % 2 == 0})
	
	method produccionEsAcotada(n1,n2) = registro.min().between(n1,n2) and registro.max().between(n1,n2)
	
	method produccionesSuperioresA(cuanto) = registro.filter({x=>x > cuanto})
	
	method produccionesSumando(n) = registro.map({x=>x+5})
	
	method totalProducido() = registro.sum()
	
	method ultimoValorDeProduccion() = registro.last()
	
	method cantidadProduccionesMayorALaPrimera() = registro.filter({x=>x > registro.first()}).size()
	
}
