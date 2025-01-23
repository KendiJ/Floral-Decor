
import 'package:flutter/material.dart';

class AppCards extends StatelessWidget {
  final Widget content;
  final Color color;
  AppCards({required this.content, required this.color});

  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        elevation: 10,
        child: content,
      ),
    );
  }
}