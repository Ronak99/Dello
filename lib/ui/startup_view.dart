import 'package:dello/themes/colors.dart';
import 'package:dello/ui/widgets/buttons/primary_button.dart';
import 'package:dello/ui/widgets/textfields/primary_textfield.dart';
import 'package:dello/utils/validator.dart';
import 'package:flutter/material.dart';

class StartupView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            PrimaryTextfield(
              labelText: "Description",
              validator: (val) => Validator.simpleValidation(val),
            ),
            PrimaryButton(
              text: "THis is great",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
