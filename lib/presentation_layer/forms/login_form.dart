import 'package:assu_app/business_logic/login/login_cubit.dart';
import 'package:assu_app/presentation_layer/widgets/signin_page_widgets/constant_texts.dart';
import 'package:assu_app/presentation_layer/widgets/signin_page_widgets/login_in_email_button.dart';
import 'package:assu_app/presentation_layer/widgets/signin_page_widgets/forgot_password.dart';
import 'package:assu_app/presentation_layer/widgets/signin_page_widgets/login_in_email_button.dart';
import 'package:assu_app/presentation_layer/widgets/signin_page_widgets/sign_in_page_input_field.dart';
import 'package:assu_app/presentation_layer/widgets/signin_page_widgets/social_sign_in_buttons.dart';
import 'package:assu_app/presentation_layer/widgets/snackbar_widgets/snackbar_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => LoginCubit(),
        child: BlocConsumer<LoginCubit, LoginState>(
            listenWhen: (p, c) => p.status != c.status,
            listener: (context, state) {
              if (state.status.isSubmissionFailure) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(snackBarWhenFailure(snackBarFailureText: state.exceptionError));
              } else if (state.status.isSubmissionSuccess) {
                ScaffoldMessenger.of(context).showSnackBar(snackBarWhenSuccess());
              }
            },
            builder: (context, state) => Stack(children: [
              Positioned.fill(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.fromLTRB(38.0, 0, 38.0, 8.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const LoginText(),
                        EmailInputField(state: state),
                        PasswordInputField(state: state),
                        Row(
                          children: const [
                            Expanded(child: SignUpButton()),
                            Expanded(child: Login()),
                            Expanded(child: ForgotPassword())
                          ],
                        ),
                        Column(children: const [
                          SeperatedText(),
                          SignInWithGoogle(),
                          SignInWithApple(),
                          SignInWithTwitter(),
                          SignInWithFacebook(),

                        ])
                      ]),
                ),
              ),
              state.status.isSubmissionInProgress
                  ? const Positioned(
                child: Align(
                  alignment: Alignment.center,
                  child: CircularProgressIndicator(),
                ),
              )
                  : Container()
            ])));
  }
}