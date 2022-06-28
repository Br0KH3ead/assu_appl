// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
// ignore_for_file: Unnecessary_new


import 'package:assu_app/app_router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( AssuApp(appRouter: AppRouter(),));
}

class AssuApp extends StatelessWidget {
final AppRouter appRouter;

 
  const AssuApp({Key? key, required this.appRouter}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assurance Application',
      debugShowCheckedModeBanner: false,
      theme: ThemeData( primaryColor: Colors.greenAccent),
      onGenerateRoute: appRouter.generateRoute,
      
    );
  }
}


