import 'package:flutter/material.dart';

class NormalButton extends StatelessWidget {
  final String name;
  final Function onPress;
  final bool isActive;
  NormalButton({this.name, this.onPress, this.isActive});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(name),
      onPressed: isActive ? null : onPress,
    );
  }
}
