import 'package:assu_app/data_layer/models/client.dart';


class Facture {
  String id;
  String prix;
  DateTime date;
  Client client;

  Facture ({
    required this.id,
    required this.prix,
    required this.date,
    required this.client
  });
   factory Facture.fromJson(Map<String, dynamic> json)
     {
       return Facture(
           id : json['id'],
           prix: json['prix'],
           date: json['date'],
           client: json['client']
       );}
  

}