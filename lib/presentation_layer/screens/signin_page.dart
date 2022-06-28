import 'package:assu_app/business_logic/login/login_cubit.dart';
import 'package:assu_app/constants/colors.dart';
import 'package:assu_app/constants/strings.dart';
import 'package:assu_app/presentation_layer/forms/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);
  static Page page() => const MaterialPage<void>(child: SignInPage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(starterPageTitle),
    backgroundColor: Mycolors.greenAccent,
    titleTextStyle: appBarTextstyle,
    leading: appBarMenu,
    actions: <Widget>[
    Padding(
    padding: EdgeInsets.only(right: 20.0),
    child: appBarSettings,
    ),
    ],
    ),
      body: BlocProvider(
        create: (_) => LoginCubit(),
        child: const LoginForm(),
      ),
    );
  }
}