import 'package:dello/constants/dimension_constants.dart';
import 'package:dello/ui/project/invite/contact_container.dart';
import 'package:dello/ui/widgets/container/primary_container.dart';
import 'package:dello/ui/widgets/textfields/primary_textfield.dart';
import 'package:dello/utils/validator.dart';
import 'package:flutter/material.dart';

class InviteMembersBody extends StatelessWidget {
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
            labelText: "Search for people to invite",
            validator: (value) => Validator.simpleValidation(value),
          ),
          SizedBox(height: dimen25),
          Expanded(
            child: PrimaryContainer(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Text(
                    "Tap to send invitation",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      height: 1.5,
                      letterSpacing: 0.3,
                      color:
                          Theme.of(context).primaryColorDark.withOpacity(0.5),
                    ),
                  ),
                  SizedBox(height: dimen15),
                  Flexible(
                    child: ListView.builder(
                      itemCount: totalItems,
                      itemBuilder: (context, i) => ContactContainer(showBorder: (i) != (totalItems-1)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
