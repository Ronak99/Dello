import 'package:dello/constants/dimension_constants.dart';
import 'package:dello/ui/auth/login/login_view.dart';
import 'package:dello/ui/widgets/arrow_statement.dart';
import 'package:dello/ui/widgets/buttons/primary_button.dart';
import 'package:dello/ui/widgets/textfields/primary_textfield.dart';
import 'package:dello/utils/utils.dart';
import 'package:dello/utils/validator.dart';
import 'package:flutter/material.dart';

class SignUpViewBody extends StatelessWidget {
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
              labelText: "Name",
              validator: (value) => Validator.simpleValidation(value),
            ),
            SizedBox(height: dimen10),
            PrimaryTextfield(
              labelText: "Email",
              keyboardType: TextInputType.emailAddress,
              validator: (value) => Validator.validateEmail(value),
            ),
            SizedBox(height: dimen10),
            PrimaryTextfield(
              labelText: "Password",
              keyboardType: TextInputType.visiblePassword,
              validator: (value) => Validator.validatePassword(value),
            ),
            SizedBox(height: dimen15),
            ArrowStatement(
              text: "Already have an account?",
              onTap: () => Utils.navigateTo(context, LoginView()),
            ),
            PrimaryButton(
              text: "SIGNUP",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
