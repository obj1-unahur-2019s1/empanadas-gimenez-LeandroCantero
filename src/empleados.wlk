object galvan {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var sueldo = 15000
	var deuda = 0
	var dinero = 0
	method sueldo() { return sueldo }
	method cambiarSueldo(nuevoValor) { sueldo = nuevoValor }
	method totalDeuda() = deuda
	method totalDinero() = dinero
	method cobrarSueldo(){
		if (deuda < sueldo){
			deuda = sueldo - deuda
			dinero += deuda
			deuda -= deuda	
		}
		else {deuda -= sueldo}
	}
	method gastar(cuanto){
		if (dinero < cuanto){
			deuda += cuanto - dinero
			dinero = 0
		}
		else {dinero -= cuanto}
	}
}

object baigorria {
	var totalCobrado = 0
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	method sueldo()= cantidadEmpanadasVendidas * montoPorEmpanada
	method totalCobrado() = totalCobrado
	method venderEmpanada() {cantidadEmpanadasVendidas += 1}
	method cobrarSueldo() {
		totalCobrado += self.sueldo()
	}
}

object gimenez {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) { 
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
}
