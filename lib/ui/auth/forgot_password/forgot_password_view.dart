import 'package:dello/ui/widgets/dello_components/dello_appbar.dart';
import 'package:dello/ui/widgets/buttons/custom_back_button.dart';
import 'package:dello/ui/widgets/buttons/primary_button.dart';
import 'package:dello/ui/widgets/textfields/primary_textfield.dart';
import 'package:dello/utils/validator.dart';
import 'package:flutter/material.dart';

class ForgotPasswordView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      appBar: DelloAppBar(
        title: Text(
          "Forgot Password",
          style: Theme.of(context).textTheme.title,
        ),
        centerTitle: true,
        leading: CustomBackButton(),
        actions: <Widget>[],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Please, enter your email address. You will receive a link to create a new password via email.",
              style: Theme.of(context).textTheme.overline,
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 20),
            PrimaryTextfield(
              labelText: "Email",
              keyboardType: TextInputType.emailAddress,
              validator: (value) => Validator.validateEmail(value),
            ),
            SizedBox(height: 35),
            PrimaryButton(
              text: "SEND",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
