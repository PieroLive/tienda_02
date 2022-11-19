import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:tienda_02/models/clientes.dart';
import 'package:http/http.dart' as http;
import 'package:tienda_02/models/clientes_report.dart';
import 'package:tienda_02/models/clientes_report_response.dart';
import 'package:tienda_02/models/clientes_response.dart';

class ClientesProvider extends ChangeNotifier {
  String _baseUrl = '192.168.42.80:3999';

  List<Clientes> listaClientes = [];
  List<ClientesReport> listaClientesReport = [];

  ClientesProvider() {
    print('Ingresando a ClientesProvider');
    this.getClientesList();
    this.reporteClientes();
  }
  getClientesList() async {
    var url = Uri.http(_baseUrl, '/api/clientes');
    final response = await http.get(url);
    print(response.body);
    final clientesReponse = ClientesResponse.fromJson(response.body);
    listaClientes = clientes.clientes;
    notifyListeners();
  }

  postsaveClientes(Clientes clientes) async {
    var url = Uri.http(_baseUrl, '/api/clientes/save');
    print(clientes.toJson());
    final response = await http.post(url,
        headers: {HttpHeaders.contentTypeHeader: 'application/json'},
        body: clientes.toJson());
    print(response);
    getClientesList();
    reporteClientes();
    notifyListeners();
  }

  reporteClientes() async {
    var url = Uri.http(_baseUrl, '/api/reportes/clientesReport');
    final response = await http.get(url);
    print(response.body);
    final clientesReportResponse =
        ClientesReportResponse.fromJson(response.body);
    listaClientesReport = clientesReportResponse.clientesReport;
    notifyListeners();
  }
}
