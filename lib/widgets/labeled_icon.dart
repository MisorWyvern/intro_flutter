import 'package:flutter/material.dart';

class LabeledIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  const LabeledIcon(this.icon, this.label, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Icon(
            icon,
            color: Theme.of(context).primaryColor,
          ),
          Text(
            label,
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
        ],
      ),
    );
  }
}
