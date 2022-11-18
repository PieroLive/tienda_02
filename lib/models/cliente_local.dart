import 'package:tienda_02/models/limpieza.dart';

class LimpiezaLocal {
  static List<Limpieza> listaLimpieza = [
    //Limpieza(id: 2, cliente: 'DETERGENTE', cantidad: '1'),
    //Limpieza(id: 1, cliente: 'JABÓN', cantidad: '2')
  ];

  void agregarLimpiezaItem(Limpieza limpieza) {
    listaLimpieza.insert(0, limpieza);
  }

  void editarLimpiezaItem(Limpieza limpieza) {
    //BUSCAR PEDIDO Y ACTUALIZAR
    for (var i = 0; i < listaLimpieza.length; i++) {
      if (listaLimpieza[i].id == limpieza.id) {
        listaLimpieza[i] = limpieza;
      }
    }
  }

  void eliminarLimpiezaItem(int index) {
    listaLimpieza.removeAt(index);
  }

  int obtenerCantidadLimpieza() {
    return listaLimpieza.length;
  }
}
