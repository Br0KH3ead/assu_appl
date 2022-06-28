import 'package:assu_app/data_layer/models/accident.dart';


class Expert {
   String id;
   String firstName;
   String lastName;
   String city;
   String phoneNumber;
   List<Accident> accidents;


   Expert(
   {
      required this.id,
      required this.firstName,
      required this.lastName,
      required this.city,
      required this.phoneNumber,
      required this.accidents
   });

   factory Expert.fromJson(Map<String, dynamic> json) {
      return Expert(
          id: json['id'] ,
          firstName: json['firstName'],
          lastName: json['lastName'],
          city: json['city'],
          phoneNumber: json['phoneNumber'],
          accidents: json['accidents']);
   }
}