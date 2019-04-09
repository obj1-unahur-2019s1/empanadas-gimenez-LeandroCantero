object galvan {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var sueldo = 15000
	var deuda = 0
	var dinero = 0
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method totalDeuda() = deuda
	method totalDinero() = dinero
	method cobrarSueldo(){
		if (deuda < sueldo){
			deuda = sueldo - deuda
			dinero += deuda
			deuda -= deuda	
		}
		else {
			deuda -= sueldo
		}
	}
	method gastar(cuanto){
		if (dinero < cuanto){
			deuda += cuanto - dinero
			dinero = 0
		}
		else {
			dinero -= cuanto
		}
	}
}

object baigorria {
	var sueldo = 0
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var montoTotal = cantidadEmpanadasVendidas * montoPorEmpanada
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo()= montoTotal
	method cobrarSueldo() {
		sueldo += montoTotal
		return sueldo
	}
	method totalCobrado() = sueldo
	
}

object gimenez {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) { 
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
}
