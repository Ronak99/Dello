import 'package:dello/constants/dimension_constants.dart';
import 'package:dello/ui/project/invite/contact_container.dart';
import 'package:dello/ui/widgets/container/primary_container.dart';
import 'package:dello/ui/widgets/textfields/primary_textfield.dart';
import 'package:dello/utils/validator.dart';
import 'package:flutter/material.dart';

class SearchBody extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final int totalItems = 5;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(dimen15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          PrimaryTextfield(
            labelText: "Search for people",
            validator: (value) => Validator.simpleValidation(value),
          ),
          SizedBox(height: dimen25),
          Expanded(
            child: PrimaryContainer(
              padding: EdgeInsets.all(20),
              child: ListView.builder(
                itemCount: totalItems,
                itemBuilder: (context, i) =>
                    ContactContainer(showBorder: (i) != (totalItems - 1)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
