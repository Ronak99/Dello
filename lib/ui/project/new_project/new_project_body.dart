import 'package:dello/constants/dimension_constants.dart';
import 'package:dello/ui/project/widgets/project_team_container.dart';
import 'package:dello/ui/widgets/buttons/primary_button.dart';
import 'package:dello/ui/widgets/container/primary_container.dart';
import 'package:dello/ui/widgets/textfields/primary_textfield.dart';
import 'package:dello/utils/validator.dart';
import 'package:flutter/material.dart';

class NewProjectBody extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: SingleChildScrollView(
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              PrimaryTextfield(
                labelText: "Project Name ",
                validator: (value) => Validator.simpleValidation(value),
              ),
              SizedBox(height: dimen20),
              PrimaryTextfield(
                labelText: "Summary",
                isTextArea: true,
                validator: (value) => Validator.simpleValidation(value),
              ),
              SizedBox(height: dimen20),
              PrimaryTextfield(
                labelText: "Due Date",
                validator: (value) => Validator.dateValidation(value),
              ),
              SizedBox(height: dimen20),
              PrimaryContainer(
                padding: EdgeInsets.all(20),
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Invite Team Members",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context)
                            .inputDecorationTheme
                            .labelStyle
                            .color,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      constraints: BoxConstraints(maxHeight: 45),
                      child: ProjectTeamContainer(
                        showCompact: false,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: dimen30),
              PrimaryButton(
                text: "CREATE PROJECT",
                onPressed: () => {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
