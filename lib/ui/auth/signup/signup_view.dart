import 'package:dello/ui/widgets/appbar/dello_appbar.dart';
import 'package:dello/ui/widgets/buttons/custom_back_button.dart';
import 'package:flutter/material.dart';

import 'signup_view_body.dart';

class SignupView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      appBar: DelloAppBar(
        title: Text(
          "Signup",
          style: Theme.of(context).textTheme.title,
        ),
        centerTitle: true,
        leading: CustomBackButton(),
        actions: <Widget>[],
      ),
      body: SignUpViewBody(),
    );
  }
}
