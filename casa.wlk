import cosas.*


object casa {
  const cosas = []

  method cosas() = cosas
  method ultimoElemento() = cosas.last() 

  method comprar(cosa) {
    cosas.add(cosa)
  }

  method cantidadDeCosasCompradas() {
    return cosas.size()
  }

  method tieneComida() {
    return cosas.any({c => c.esComida()})   // esta coleccion recorre la lista y te devuelve un true o false
  }

  method vieneDeEquiparse() {
    if(cosas.isEmpty()){
        return false
    }else
    {
        return self.ultimoElemento().esElectrodomestico() || self.ultimoElemento().precio() > 50000
    }
  }

  method sumaDelPrecioDeCosas() {
    return cosas.sum({c => c.precio()})   //esto transforma la lista de cosas en numeros para poder sumarlos y que me devuelva el numero total
  }

  method esDerrochona() {
    return self.sumaDelPrecioDeCosas() >= 90000   //acá al estar transformado en numero el metodo sumaDelPrecioDeCosas() me puede comparar con el 90000
  }

  method compraMasCara() {
    return cosas.max({c => c.precio()})  //me devuelve el objeto (helader, plancha, etc.)
  }

  method precioDeLaCosaMasCara() {
    return self.compraMasCara().precio()  //esto te devuelve el precio mas caro del objeto anterior
  }

  method electrodomesticosComprados() {
    return cosas.filter({c => c.esElectrodomestico()})
  }

  method malaEpoca() {
    return cosas.all({c => c.esComida()})   //esta coleccion te devuelve true si todos los elementos de la lista son verdadero en si es comida
  }

  method fueComprado(unaCosa) {     //metodo auxiliar para saber si el elemento está dentro de la lista
    return cosas.contains(unaCosa)
  }

  method queFaltaComprar(lista) {
    return lista.filter({e => not self.fueComprado(e)})    //el filtro lo aplico a la lista pasada por argumento. Por ejemplo: la casa compro heladera, plancha y tira de asado
  }                                                        // y yo le pido que me filtre solo heladera y tira de asado.  "e" es el elemento de la lista, no de la lista de cosas
  
  method faltaComida() {
    return 
  }
}