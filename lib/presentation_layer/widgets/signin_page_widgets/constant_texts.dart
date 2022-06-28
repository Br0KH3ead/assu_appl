import 'package:assu_app/constants/colors.dart';
import 'package:flutter/material.dart';

class LoginText extends StatelessWidget {
  const LoginText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 30.0, top: 30.0),
      child: Text(
        'Welcome to Assurance App',
        textAlign: TextAlign.center,
        style: TextStyle(color:Mycolors.purple,fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class SeperatedText extends StatelessWidget {
  const SeperatedText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 10.0, top: 10.0),
      child: Text(
        'OR',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
      ),
    );
  }
}