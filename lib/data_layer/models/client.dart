// ignore_for_file: file_names

import 'package:assu_app/data_layer/models/accident.dart';
import 'package:assu_app/data_layer/models/facture.dart';
import 'package:assu_app/data_layer/models/voiture.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class Client extends ChangeNotifier {
  String id ;
  String firstName;
  String lastName;
  String email;
  int    phoneNumber;
  String password ;
  String city;
  bool   verified;
  List<Accident> accidents ;
  List<Voiture> voitures;
  List<Facture> factures;

  Client (
  { required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phoneNumber,
    required this.password,
    required this.city,
    required this.verified,
    required this.accidents,
    required this.voitures,
    required this.factures
  });
  factory Client.fromJson(Map<String ,dynamic> json){
     return Client(
         id: json['id'],
         firstName: json['firstName'],
         lastName: json['lastName'],
         email: json['email'],
         phoneNumber: json['phoneNumber'],
         password: json['password'],
         city: json['ville'],
         verified: json['verified'],
         accidents: json['accidents'],
         voitures: json['voitures'],
         factures: json['factures']);

  }
}
