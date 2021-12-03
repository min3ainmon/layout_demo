import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  ActionButton({required this.onpress});

  //final String text;
  final Function() onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        width: 80.0,
        height: 80.0,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.orange,

        ),
        child: Center(
          child: Text('Menu',
            textAlign: TextAlign.center,
            style: TextStyle(
            fontSize: 20.0,
          ),),
        ),
      ),
    );
  }
}