// ignore_for_file: file_names
import 'package:assu_app/data_layer/models/accident.dart';


class Constateur {
    String id;
    String firstName;
    String lastName;
    String city;
    int    phoneNumber;
    Accident accidents;

    Constateur({
        required this.id,
        required this.firstName,
        required this.lastName,
        required this.phoneNumber,
        required this.city,
        required this.accidents
    });


    factory Constateur.fromJson(Map<String, dynamic> json) {
        return Constateur(
             id: json['id'],
             firstName: json['firstName'],
             lastName: json['lastName'],
             city: json['city'],
             phoneNumber: json['phoneNumber'],
             accidents: json['accidents']);
    }
}