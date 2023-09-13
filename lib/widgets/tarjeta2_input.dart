import 'package:flutter/material.dart';

class Tarjeta2Custom extends StatelessWidget {
  final Map<String, String> formValues; 
  const Tarjeta2Custom ({
    super.key,
    required this.formValues, required String labelText,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
          children: [
          Text(formValues['email']!),
          Text(formValues['password']!),
        ],
      ),
    );
  }
}