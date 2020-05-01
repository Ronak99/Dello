import 'package:dello/ui/auth/forgot_password/forgot_password_view.dart';
import 'package:dello/ui/auth/signup/signup_view.dart';
import 'package:dello/ui/auth/verify/verify_email_view.dart';
import 'package:dello/ui/widgets/arrow_statement.dart';
import 'package:dello/ui/widgets/buttons/primary_button.dart';
import 'package:dello/ui/widgets/textfields/primary_textfield.dart';
import 'package:dello/utils/utils.dart';
import 'package:dello/utils/validator.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            PrimaryTextfield(
              labelText: "Email",
              keyboardType: TextInputType.emailAddress,
              validator: (value) => Validator.validateEmail(value),
            ),
            SizedBox(height: 10),
            PrimaryTextfield(
              labelText: "Password",
              keyboardType: TextInputType.visiblePassword,
              validator: (value) => Validator.validatePassword(value),
            ),
            SizedBox(height: 15),
            ArrowStatement(
              text: "Forgot your password",
              onTap: () => Utils.navigateTo(context, ForgotPasswordView()),
            ),
            PrimaryButton(
              text: "LOGIN",
              onPressed: () => Utils.navigateTo(context, VerifyEmailView()),
            ),
            SizedBox(height: 30),
            Align(
              alignment: Alignment.center,
              child: ArrowStatement(
                text: "Create New Account",
                onTap: () => Utils.navigateTo(context, SignupView()),
                coverWholeLine: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
