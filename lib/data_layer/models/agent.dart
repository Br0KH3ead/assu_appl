import 'package:assu_app/data_layer/models/facture.dart';


class Agent {
  String id;
  List<Facture> factures;


  Agent ({
    required this.id,
    required this.factures,
});

  factory Agent.fromJson (Map<String, dynamic> json)
  {
    return Agent(
        id: json['id'],
        factures: json['factures']);
  }
}