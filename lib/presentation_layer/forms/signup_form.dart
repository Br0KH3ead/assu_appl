import 'package:assu_app/business_logic/signup/signup_cubit.dart';
import 'package:assu_app/presentation_layer/widgets/sign_up_pages_widgets/constant_sign_up_text.dart';
import 'package:assu_app/presentation_layer/widgets/sign_up_pages_widgets/sign_up_pages_input_fields.dart';
import 'package:assu_app/presentation_layer/widgets/sign_up_pages_widgets/sign_up_with_email_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
        listener: (context, state) {
          if (state.status.isSubmissionFailure) {
            var snackBar = SnackBar(content: Text(state.exceptionError), backgroundColor: Colors.red);
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          } else if (state.status.isSubmissionSuccess) {
            var snackBar = const SnackBar(content: Text("Connecté"), backgroundColor: Colors.green);
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
                        const SignUpText(),
                        NameInputField(state: state),
                        SignUpPageEmailInputField(state: state),
                        SignUpPagePasswordInputField(state: state),
                        RePasswordInputField(state: state),
                        SignUp(state: state),
                        SigninIfAlready(state: state)
                      ]))),
          state.status.isSubmissionInProgress
              ? const Positioned(
            child: Align(
              alignment: Alignment.center,
              child: CircularProgressIndicator(),
            ),
          )
              : Container()
        ]));
  }
}