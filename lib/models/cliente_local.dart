import 'package:tienda_02/models/cliente.dart';

class ClienteLocal {
  static List<Cliente> listaCliente = [
    //Cliente(id: 2, producto: 'DETERGENTE', cantidad: '1'),
    //Cliente(id: 1, producto: 'JABÓN', cantidad: '2')
  ];

  void agregarClienteItem(Cliente cliente) {
    listaCliente.insert(0, cliente);
  }

  void editarClienteItem(Cliente cliente) {
    //BUSCAR PEDIDO Y ACTUALIZAR
    for (var i = 0; i < listaCliente.length; i++) {
      if (listaCliente[i].id == cliente.id) {
        listaCliente[i] = cliente;
      }
    }
  }

  void eliminarClienteItem(int index) {
    listaCliente.removeAt(index);
  }

  int obtenerCantidadCliente() {
    return listaCliente.length;
  }
}

