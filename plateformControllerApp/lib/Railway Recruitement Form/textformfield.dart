import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class TextArea extends StatefulWidget {
  TextArea(
      {Key? key,
      required this.labelText,
      required this.controller,
      required this.isNummaricKeyboad,
      required this.isTextInputActiondone})
      : super(key: key);

  String labelText = "";
  TextEditingController controller = TextEditingController();
  bool isNummaricKeyboad = false;
  bool isTextInputActiondone = false;
  @override
  State<TextArea> createState() => _TextAreaState();
}

class _TextAreaState extends State<TextArea> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      textInputAction: widget.isTextInputActiondone
          ? TextInputAction.done
          : TextInputAction.next,
      keyboardType:
          widget.isNummaricKeyboad ? TextInputType.number : TextInputType.text,
      decoration: InputDecoration(
          label: Text(widget.labelText),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
    );
  }
}
