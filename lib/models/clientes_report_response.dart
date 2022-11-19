import 'dart:convert';

import 'package:tienda_02/models/clientes_report.dart';

class ClientesReportResponse {
  ClientesReportResponse({
    required this.clientesReport,
  });

  List<ClientesReport> clientesReport;

  factory ClientesReportResponse.fromJson(String str) =>
      ClientesReportResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ClientesReportResponse.fromMap(Map<String, dynamic> json) =>
      ClientesReportResponse(
        clientesReport: List<ClientesReport>.from(
            json["clientesReport"].map((x) => ClientesReport.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "clientesReport":
            List<dynamic>.from(clientesReport.map((x) => x.toMap())),
      };
}
