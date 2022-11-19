import 'package:flutter/material.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: <Widget>[
          const DrawerHeader(
            child: Text('INICIO'),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/bakerylogo.jpg'),
                    fit: BoxFit.cover)),
          ),
          ListTile(
            leading: const Icon(Icons.shop),
            title: Text('Principal'),
            onTap: () {
              Navigator.pushNamed(context, 'principal');
            },
          ),
          ListTile(
            leading: const Icon(Icons.cookie),
            title: Text('Productos'),
            onTap: (() {
              Navigator.pushNamed(context, 'productos');
            }),
          ),
          ListTile(
            leading: const Icon(Icons.water),
            title: Text('Abarrotes'),
            onTap: (() {
              Navigator.pushNamed(context, 'abarrotes');
            }),
          ),
          ListTile(
            leading: const Icon(Icons.apple),
            title: Text('Proveedores'),
            onTap: (() {
              Navigator.pushNamed(context, 'proveedores');
            }),
          ),
          ListTile(
            leading: const Icon(Icons.shop),
            title: Text('Verduras'),
            onTap: (() {
              Navigator.pushNamed(context, 'verduras');
            }),
          ),
          ListTile(
            leading: const Icon(Icons.shop),
            title: Text('clientes'),
            onTap: (() {
              Navigator.pushNamed(context, 'clientes');
            }),
          ),
          ListTile(
            leading: const Icon(Icons.shop),
            title: Text('Reportes'),
            onTap: (() {
              Navigator.pushNamed(context, 'reportes');
            }),
          ),
          ListTile(
            leading: const Icon(Icons.shop),
            title: Text('Reportes Proveedores'),
            onTap: (() {
              Navigator.pushNamed(context, 'reportes_proveedores');
            }),
          ),
        ],
      ),
    );
  }
}
