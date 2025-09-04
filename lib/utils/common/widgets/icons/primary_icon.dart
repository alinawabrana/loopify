import 'package:flutter/material.dart';

class PrimaryIcon extends StatelessWidget {
  const PrimaryIcon({super.key, required this.icon, this.size});

  final IconData icon;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: Theme.of(context).iconTheme.color,
      size: size ?? Theme.of(context).iconTheme.size,
    );
  }
}
