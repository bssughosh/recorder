import 'package:flutter/material.dart';

/// Button Widget which can be reused multiple times in the application
class NormalButton extends StatelessWidget {
  final String name;
  final Function onPress;
  final bool isActive;
  final Icon icon;
  NormalButton({this.name, this.onPress, this.isActive, this.icon});

  @override
  Widget build(BuildContext context) {
    return RaisedButton.icon(
      color: Color(0xFF3DFA28),
      disabledColor: Color(0xFF71FBF8),
      focusColor: Color(0xFF20C719),
      label: Text(name),
      icon: icon,
      onPressed: isActive ? null : onPress,
    );
  }

  bool isEnabled() {
    return !(isActive);
  }
}
