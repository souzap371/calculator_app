import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  //const Button({super.key});
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final bool big;
  final Color color;

  Button({
    required this.text,
    this.big = false,
    this.color = DEFAULT,
  });

  Button.big({
    required this.text,
    this.big = true,
    this.color = DEFAULT,
  });

  Button.operation({
    required this.text,
    this.big = false,
    this.color = OPERATION,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: ElevatedButton(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w200,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: color,
        ),
        onPressed: () {},
      ),
    );
  }
}
