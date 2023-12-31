import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
 final String? hintText;
 final String? labelText;
 final String? helperText;
 final IconData? suffixIcon;
 final IconData? icon;
 final TextInputType? keyboardType;
 final bool obscureText;
 final String formProperty; 
 final Map<String, String> formValues; 


  const CustomInputField({
    Key? key, 
    this.hintText,
    this.labelText,
    this.helperText,
    this.suffixIcon, 
    this.icon, 
    this.keyboardType, 
    this.obscureText = false, 
    required this.formProperty, 
    required this.formValues,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return TextFormField(
      autofocus: false,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: ( value ) => formValues[formProperty]= value,
      validator:( value ){
        if (  value == null  ) return 'Este campo es requerido';
        return value.length < 2 ? 'Minimo de 2 letras' : null;
      },

      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration:  InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,

      ),
    );
  }
}