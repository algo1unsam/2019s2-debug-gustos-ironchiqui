/* colores */
object rojo { method esFuerte() { return true } }
object verde { method esFuerte() { return true } }
object celeste { method esFuerte() { return false } } 
object pardo { method esFuerte() { return false } }
object naranja{method esFuerte() { return true}}

/* materiales */
object cobre { method brilla() { return true } method conduceElectricidad(){return true} }
object vidrio { method brilla() { return true } }
object lino { method brilla() { return false } }
object madera { method brilla() { return false } }
object cuero { method brilla() { return false } }
object plomo {
	
	var _estado=natural
	
	method cambiarEstado(estado){
		
		_estado=estado
}
	
	method estado(){return _estado}
	method brilla(){
		
		return self.estado().brilla()
			
			
		}
		

	method conduceElectricidad(){
		
		return _estado.conduceElectricidad()
	}
}

/* estados */

object natural{
	
	method brilla(){
		return true
	}
	
	method conduceElectricidad(){return false}
}
object cromado{
	method brilla(){return true}
	method conduceElectricidad(){return true}
	
}
object oxidado{
	
	method brilla(){return false}
	method conduceElectricidad(){return false}
}
/* objetos */
object remera {
	method color() { return rojo }
	method material() { return lino }
	method peso() { return 800 }
}

object pelota {
	method color() { return pardo }
	method material() { return cuero }
	method peso() { return 1300 }
}

object biblioteca {
	method color() { return verde }
	method material() { return madera }
	method peso() { return 8000 }
}

object munieco {
	var _peso 
	
	method color() { return celeste }
	method material() { return vidrio }
	method peso() { return _peso }
	method setPeso(peso) { _peso = peso }
}

object placa {
	var _color
	var _peso 
	
	method color() { return _color }
	method setColor(color) { _color = color }
	method material() { return cobre }
	method peso() { return _peso }
	method setPeso(peso) { _peso = peso }
}

object arito{
	
	method color(){return celeste}
	method materia(){return cobre}
	method peso(){return 180}
	
}
object banquito{
	var _color=naranja
	
	method color(){ return _color}
	method setColor(color){_color=color}
	method material() {return madera}
	method peso(){ return 1700}
	
}

object cajita{
	var objetoGuardado
	var peso=400
	
	method color(){return rojo}
	method guardarObjeto(objeto){objetoGuardado=objeto}
	method peso(){ return peso + objetoGuardado.peso()}
	
	
}




