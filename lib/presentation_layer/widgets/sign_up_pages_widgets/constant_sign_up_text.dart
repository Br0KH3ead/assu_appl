

import 'package:assu_app/business_logic/signup/signup_cubit.dart';
import 'package:assu_app/constants/colors.dart';
import 'package:assu_app/constants/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpText extends StatelessWidget {
  const SignUpText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 30.0, top: 30.0),
      child: Text(
        'Register and Join Us!',
        textAlign: TextAlign.center,
        style: TextStyle(color: Mycolors.purple,fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class SigninIfAlready extends StatelessWidget {
  const SigninIfAlready({Key? key, required this.state} ) : super(key: key);
  final SignUpState state ;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 10.0),
        child: InkWell(
            child: Text('Already have an account'),
             onTap: () {
              Navigator.pushNamed(context, signinScreenPage);
             } ,

        ),

    );
  }
}
