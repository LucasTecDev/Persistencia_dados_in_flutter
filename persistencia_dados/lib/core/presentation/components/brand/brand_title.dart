import 'package:flutter/material.dart';

class BrandTitleWidget extends StatelessWidget {
  final double fontSize;

  const BrandTitleWidget({this.fontSize= 62});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
          'Guarda Senha',
          style: TextStyle(
          fontSize: 50,
          color: Theme.of(context).primaryColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}