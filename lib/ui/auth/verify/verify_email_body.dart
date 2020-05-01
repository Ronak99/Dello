import 'package:dello/constants/string_constants.dart';
import 'package:dello/ui/widgets/buttons/primary_button.dart';
import 'package:dello/ui/widgets/textfields/primary_textfield.dart';
import 'package:dello/utils/validator.dart';
import 'package:flutter/material.dart';

class VerifyEmailBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            "assets/images/mail_unconfirmed.png",
            height: 100,
            width: 100,
          ),
          SizedBox(height: 40),
          Text(
            "Thank you for registering",
            style: Theme.of(context).textTheme.headline,
            
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              verificationParagraph,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle,
              
            ),
          ),
          SizedBox(height: 45),
          PrimaryTextfield(
            labelText: "Verification Code",
            keyboardType: TextInputType.number,
            validator: (value) => Validator.validateEmail(value),
          ),
          SizedBox(height: 10),
          PrimaryButton(
            text: "CONFIRM",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
