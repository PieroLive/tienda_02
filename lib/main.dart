import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tienda_02/providers/abarrotes_provider.dart';
import 'package:tienda_02/providers/productos_provider.dart';
import 'package:tienda_02/providers/proveedores_provider.dart';
import 'package:tienda_02/providers/clientes_provider.dart';
import 'package:tienda_02/providers/verduras_provider.dart';
import 'package:tienda_02/screens/abarrotes_form_screen.dart';
import 'package:tienda_02/screens/abarrotes_screen.dart';
import 'package:tienda_02/screens/productos_screen.dart';
import 'package:tienda_02/screens/productos_form_screen.dart';
import 'package:tienda_02/screens/proveedores_screen.dart';
import 'package:tienda_02/screens/proveedores_form_screen.dart';
import 'package:tienda_02/screens/reporte_screen.dart';
import 'package:tienda_02/screens/verduras_screen.dart';
import 'package:tienda_02/screens/verduras_form_screen.dart';
import 'package:tienda_02/screens/clientes_screen.dart';
import 'package:tienda_02/screens/clientes_form_screen.dart';
import 'package:tienda_02/screens/principal_screen.dart';
import 'package:tienda_02/screens/reporte_proveedores_screen.dart';
import 'package:tienda_02/screens/reporte_clientes_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => ProductosProvider()),
          ChangeNotifierProvider(create: (_) => ClientesProvider()),
          ChangeNotifierProvider(create: (_) => ProveedoresProvider()),
          ChangeNotifierProvider(create: (_) => AbarrotesProvider()),
          ChangeNotifierProvider(create: (_) => VerdurasProvider()),
        ],
        child: MaterialApp(
          title: 'PANADERÍA DE DON PIERO',
          debugShowCheckedModeBanner: false,
          initialRoute: 'principal',
          routes: {
            'principal': (_) => const PrincipalScreen(),
            'abarrotes': (_) => const AbarrotesScreen(),
            'abarrotes_form': (_) => const AbarrotesFormScreen(),
            'productos': (_) => const ProductosScreen(),
            'productos_form': (_) => const ProductosFormScreen(),
            'proveedores': (_) => const ProveedoresScreen(),
            'proveedores_form': (_) => const ProveedoresFormScreen(),
            'clientes': (_) => const ClientesScreen(),
            'clientes_form': (_) => const ClientesFormScreen(),
            'verduras': (_) => const VerdurasScreen(),
            'verduras_form': (_) => const VerdurasFormScreen(),
            'reportes': (_) => const ReporteScreen(),
            'reportes_proveedores': (_) => const ReporteProveScreen(),
            'reportes_clientes': (_) => const ReporteClientesScreen(),
          },
        ));
  }
}
