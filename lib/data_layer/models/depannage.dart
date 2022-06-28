import 'package:assu_app/data_layer/models/accident.dart';


class Depannage {
   String id;
   String firstName;
   String lastName;
   String city;
   String phoneNumber;
   List<Accident> accidents;

   Depannage({
      required this.id,
      required this.firstName,
      required this.lastName,
      required this.city,
      required this.phoneNumber,
      required this.accidents

});

   factory Depannage.fromJson (Map<String, dynamic> json)
   {
      return Depannage(
          id: json['id'],
          firstName: json['firstName'],
          lastName: json['lastName'],
          city: json['city'],
          phoneNumber: json['phoneNumber'],
          accidents: json['accidents']);


   }
}