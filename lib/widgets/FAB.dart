import 'package:flutter/material.dart';

class FAB extends StatelessWidget {
  final Function onPressed;
  final IconData icon;
  FAB({this.onPressed, this.icon});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.white.withOpacity(0.85),
      onPressed: onPressed,
      child: Icon(
        icon,
        color: Colors.black,
      ),
    );
  }
}