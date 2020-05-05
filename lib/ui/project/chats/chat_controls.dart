import 'package:dello/constants/dimension_constants.dart';
import 'package:dello/ui/widgets/buttons/primary_button_with_icon.dart';
import 'package:dello/ui/widgets/svg_icon.dart';
import 'package:flutter/material.dart';

class ChatControls extends StatefulWidget {
  @override
  _ChatControlsState createState() => _ChatControlsState();
}

class _ChatControlsState extends State<ChatControls> {
  bool _isTyping = false;
  double _defaultButtonWidth = 90;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        border: Border(
          top: BorderSide(
            color: Theme.of(context).colorScheme.onSurface.withAlpha(100),
            width: 1,
          ),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Row(
        children: <Widget>[
          Flexible(
            child: TextField(
              maxLines: 4,
              minLines: 1,
              style: Theme.of(context).textTheme.overline,
              onChanged: (val) {
                if (val.trim().isNotEmpty) {
                  setState(() {
                    _isTyping = true;
                    _defaultButtonWidth = 120;
                  });
                } else {
                  setState(() {
                    _isTyping = false;
                    _defaultButtonWidth = 90;
                  });
                }
              },
              decoration: InputDecoration(
                hintStyle: Theme.of(context).inputDecorationTheme.labelStyle,
                hintText: "Send Message",
              ),
            ),
          ),
          _isTyping
              ? SizedBox(
                  height: 0,
                  width: 0,
                )
              : FileImporters(),
          SizedBox(width: dimen15),
          PrimaryButtonWithIcon(
            text: "SEND",
            icon: Icon(Icons.send, size: 18),
            margin: EdgeInsets.symmetric(vertical: 5),
            textPadding: EdgeInsets.symmetric(vertical: 5),
            onPressed: () {},
            borderRadius: 15,
            width: _defaultButtonWidth,
          ),
        ],
      ),
    );
  }
}

class FileImporters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(width: dimen5),
        Container(
          height: 20,
          width: 20,
          child: SvgIcon(
            iconName: "attachment_icon",
          ),
        ),
        SizedBox(width: dimen15),
        Container(
          height: 20,
          width: 20,
          child: SvgIcon(
            iconName: "import_image_icon",
          ),
        ),
      ],
    );
  }
}
