import 'package:assu_app/business_logic/login/login_cubit.dart';
import 'package:assu_app/constants/colors.dart';
import 'package:assu_app/constants/consts.dart';
import 'package:assu_app/presentation_layer/screens/client_page.dart';
import 'package:assu_app/presentation_layer/screens/signup_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 15),
        child: SignInButton(Buttons.Email,
            mini: true, onPressed: () => {context.read<LoginCubit>().logInWithCredentials() ,
            Navigator.pushNamed(context, clientPage)}));
  }
}

class SignUpButton extends StatelessWidget {
  const SignUpButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, right: 5),
      child: CupertinoButton(
        padding: EdgeInsets.zero,
        borderRadius: BorderRadius.circular(3),
        child: Container(
          margin: const EdgeInsets.all(3),
          child: const Text(
            'Sign Up',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
        ),
        color: Mycolors.purple,
        onPressed: () => {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SignUpPage()),
          )
        },
      ),
    );
  }
}