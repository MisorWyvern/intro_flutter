import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  final String title;

  const CustomTitle(this.title, {Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
