import 'package:flutter/material.dart';

class PasswordInputText extends StatefulWidget {
  const PasswordInputText(
      {Key key, this.hintText, this.labelText, this.onChange})
      : super(key: key);

  final String hintText;
  final String labelText;
  final void Function(String value) onChange;

  @override
  _PasswordInputTextState createState() => _PasswordInputTextState();
}

class _PasswordInputTextState extends State<PasswordInputText> {
  bool showPassword = false;
  TextEditingController controller = TextEditingController();

  void _onChange(String value) {
    controller.text = value;
    if (widget.onChange != null) {
      widget.onChange(value);
    }
  }

  void _changePwdType() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: showPassword,
      controller: controller,
      onChanged: (value) => _onChange,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          icon: Icon(showPassword ? Icons.visibility : Icons.visibility_off),
          onPressed: _changePwdType,
        ),
        hintText: widget.hintText != null ? widget.hintText : null,
        labelText: widget.labelText != null ? widget.labelText : null,
      ),
    );
  }
}
