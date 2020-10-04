import 'package:flutter/material.dart';

/// Button Widget which can be reused multiple times in the application
class NormalButton extends StatelessWidget {
  final String name;
  final Function onPress;
  final bool isActive;
  NormalButton({this.name, this.onPress, this.isActive});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Color(0xFF3DFA28),
      disabledColor: Color(0xFF71FBF8),
      focusColor: Color(0xFF20C719),
      child: Text(name),
      onPressed: isActive ? null : onPress,
    );
  }
}
