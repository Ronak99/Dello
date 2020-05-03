import 'package:dello/ui/widgets/container/primary_container.dart';
import 'package:flutter/material.dart';

class PrimaryTextfield extends StatelessWidget {
  final String labelText;
  final bool isPassword;
  final bool enabled;
  final Function validator;
  final String initialValue;
  final FocusNode focusNode;
  final TextEditingController controller;
  final Function onSaved;
  final Function onTap;
  final Function onChanged;
  final TextInputType keyboardType;
  final bool isTextArea;
  final int maxLines;

  PrimaryTextfield({
    this.labelText,
    this.isPassword = false,
    this.enabled = true,
    this.onSaved,
    this.focusNode,
    this.onChanged,
    this.controller,
    this.validator,
    this.initialValue,
    this.onTap,
    this.keyboardType,
    this.isTextArea = false,
    this.maxLines = 4,
  });

  @override
  Widget build(BuildContext context) {
    return PrimaryContainer(
      padding: EdgeInsets.symmetric(horizontal: 17, vertical: 10),
      child: TextFormField(
        style: Theme.of(context).textTheme.overline,
        onSaved: onSaved,
        minLines: isTextArea ? maxLines : 1,
        maxLines: isTextArea ? maxLines : 1,
        onChanged: onChanged,
        focusNode: focusNode,
        obscureText: isPassword,
        enabled: enabled,
        controller: controller,
        validator: validator,
        initialValue: initialValue,
        onTap: onTap,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: labelText,
          contentPadding: EdgeInsets.all(3),
        ),
      ),
    );
  }
}
