import 'client.dart';


  class Voiture {
     String id;
     String brand;
     String matricule;
     Client client;

     Voiture ({
      required this.id,
      required this.brand,
      required this.matricule,
      required this.client});

     factory Voiture.fromJson (Map<String, dynamic> json){
         return Voiture(
             id: json['id'],
             brand: json['brand'],
             matricule: json['matricule'],
             client: json['client']);}


  }