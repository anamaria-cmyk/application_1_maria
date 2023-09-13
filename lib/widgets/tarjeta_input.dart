import 'package:flutter/material.dart';

class TarjetaInput extends StatelessWidget {
  final Map<String, String> formValues; 

  const TarjetaInput({
    super.key,
    required this.formValues,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
         Text(formValues['first_name']!),
         Text(formValues['last_name']!),
         Text(formValues['age']!),
        ],
      ),
    );
  }
}