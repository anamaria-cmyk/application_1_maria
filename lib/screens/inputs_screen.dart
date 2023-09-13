

import 'package:application_1_maria/widgets/custom_input.dart';
import 'package:application_1_maria/widgets/tarjeta_input.dart';
import 'package:flutter/material.dart';


class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}
class _InputsScreenState extends State<InputsScreen> {
  
  bool mostrandoForm = true;

  final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

  final Map<String, String> formValues = {
      'first_name' : '',
      'last_name'  : '',
      'age'        : '',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs'),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 20),
          child: (mostrandoForm) ?
            Form(
              key: myFormKey,
              child: Column(
                children: [ 
                  CustomInputField(labelText: 'Nombre',   hintText: 'Nombre del Usuario',   formProperty: 'first_name', formValues:formValues),
                  const SizedBox( height: 30),
            
                  CustomInputField(labelText: 'Apellido', hintText: 'Apellido del Usuario', formProperty: 'last_name',  formValues:formValues),
                  const SizedBox( height: 30),

                  CustomInputField(labelText: 'edad',     hintText:  'edad del Usuario',    formProperty:    'age',     formValues:formValues),
                  const SizedBox( height: 30),

                  ElevatedButton(
                    child: const SizedBox(
                      width: double.infinity,
                      child: Center( child: Text('Guardar'),),
                    ),

                    onPressed: () {
                      FocusScope.of(context).requestFocus( FocusNode());
                      setState(() {
                        mostrandoForm = false;
                      });
                    },
                  )
                ],
              ),
            ):
            TarjetaInput(formValues: formValues)
        )
      )
    );
  }
}