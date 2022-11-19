import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tienda_02/models/clientes.dart';
import 'package:tienda_02/models/clientes_local.dart';
import 'package:tienda_02/providers/clientes_provider.dart';
import 'package:tienda_02/widgets/menu_lateral.dart';

class ClientesScreen extends StatefulWidget {
  const ClientesScreen({super.key});

  @override
  State<ClientesScreen> createState() => _ClientesScreenState();
}

class _ClientesScreenState extends State<ClientesScreen> {
  @override
  Widget build(BuildContext context) {
    final clientesProvider = Provider.of<ClientesProvider>(context);
    final List<Clientes> listaClientes = clientesProvider.listaClientes;

    return Scaffold(
      appBar: AppBar(
        title: const Text('CLIENTES'),
      ),
      drawer: const MenuLateral(),
      body: Center(
        child: ListView.builder(
            itemCount: listaClientes.length,
            itemBuilder: (context, index) {
              return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    margin: EdgeInsets.only(top: 30, bottom: 20),
                    width: double.infinity,
                    height: 350,
                    decoration: _cardBorders(),
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Container(
                            width: double.infinity,
                            height: 400,
                            child: FadeInImage(
                                placeholder:
                                    AssetImage('assets/Loadingemo.gif'),
                                image:
                                    NetworkImage(listaClientes[index].imagen),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Container(
                          color: Color.fromARGB(184, 146, 86, 34),
                          child: ListTile(
                            leading: Icon(Icons.card_giftcard),
                            title: Text(
                              listaClientes[index].producto,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(184, 34, 92, 88),
                              ),
                            ),
                            subtitle: Text(
                              listaClientes[index].fecha,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.indigo),
                            ),
                            trailing: const Icon(Icons.arrow_right),
                            onTap: () {
                              Navigator.pushNamed(context, 'clientes_form',
                                  arguments: listaClientes[index]);
                            },
                          ),
                        )
                      ],
                    ),
                  ));
            }),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          agregarClientesItem();
        },
        backgroundColor: Colors.red[400],
      ),
    );
  }

  void agregarClientesItem() {
    Navigator.pushNamed(context, 'clientes_form');
  }
}

BoxDecoration _cardBorders() => BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
              color: Colors.lightBlueAccent,
              offset: Offset(0, 10),
              blurRadius: 10)
        ]);
