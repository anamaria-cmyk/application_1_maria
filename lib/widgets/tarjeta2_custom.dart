import 'package:flutter/material.dart';

class InformacionInput extends StatelessWidget {
 final String? hintText;
 final String? labelText;
 final String formProperty; 
 final Map<String, String> formValues; 
  const InformacionInput({
    Key? key, 
    this.hintText,
    this.labelText,
    required this.formProperty, 
    required this.formValues,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      onChanged: ( value ) => formValues[formProperty]= value,
  
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration:  InputDecoration(
        hintText: hintText,
        labelText: labelText,
      ),
    );
  }
}