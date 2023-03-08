import 'package:flutter/material.dart';

class spacer extends StatelessWidget {
  const spacer({super.key, this.height = 8.0});

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
