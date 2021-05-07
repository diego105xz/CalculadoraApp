import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromARGB(82, 82, 82, 1);
  static const DEFAULT = Color.fromARGB(105, 105, 105, 1);
  static const OPERATION = Color.fromARGB(250, 158, 13, 1);

  final String text;
  final bool big;
  final Color color;

  Button({
    @required this.text,
    this.big = false,
    this.color = DARK,
  });

  Button.big({
    @required this.text,
    this.big = true,
    this.color = DEFAULT,
  });

  Button.operation({
    @required this.text,
    this.big = false,
    this.color = OPERATION,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: RaisedButton(
        color: this.color,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w200,
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
