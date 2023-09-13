import 'package:application_1_maria/router/app_routers.dart';
import 'package:application_1_maria/widgets/tarjeta2_custom.dart';
import 'package:flutter/material.dart';

class HomeTarjeta extends StatefulWidget {
  const HomeTarjeta({super.key});

  @override
  State<HomeTarjeta> createState() => _HomeTarjetaState();
}
class _HomeTarjetaState extends State<HomeTarjeta> {
  
  bool mostrandoForm = true;

  final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

  final Map<String, String> formValues = {
      'email'       : '',
      'password'    : '',
      };
      @override
  Widget build(BuildContext context) {
    final options = AppRoutes.menuOptions;
    options[1];
    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 20),
          child: Card(
            child: Column(
              children:[
                 InformacionInput(labelText: 'correo', hintText: 'correo del usuario', formProperty: 'email', formValues: formValues),
                 InformacionInput(labelText: 'contraseña', hintText: 'contraseña del usuario', formProperty: 'password', formValues: formValues,),
                 ElevatedButton( 
                  child:Text('ingresar'),
                  onPressed: () {
                    Navigator.pushNamed(context, options[4].route);
                  }, 
                  )
                
                ],
            ),
          )
        )
      );
  }
}

