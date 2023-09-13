import 'package:application_1_maria/themes/app_theme.dart';
import 'package:application_1_maria/widgets/custom_card.dart';
import 'package:flutter/material.dart';


class BottonScreen extends StatefulWidget {

  const BottonScreen({super.key});

  @override
  State<BottonScreen> createState() => _BottonScreenState();
}

class _BottonScreenState extends State<BottonScreen> {

  bool mostrandoBoton = true;

  @override
  Widget build(BuildContext context) {
     return  Scaffold(
      body: SafeArea(
        child: Center(
          child: (
        
            (mostrandoBoton) ?
              ElevatedButton(
                child: const  Padding(
                  padding: EdgeInsets.symmetric( horizontal: 20, vertical: 15),
                  child: Text('Imagenes', style: TextStyle(fontSize: 16)),
                ),
                onPressed: ()  => displayDialogAndroid( context )
              ) :

              SizedBox(
                child: ListView(
                  children:const [
                    CustomCardType( imageUrl:'https://images5.alphacoders.com/104/1046568.jpg', 
                      name: 'one piece'
                    ),
                    CustomCardType( imageUrl:'https://wallpapers.com/images/hd/angry-trafalgar-law-one-piece-fanart-1x46evo1xatb7a1f.jpg',
                      name: 'law'
                    ),
                    CustomCardType( imageUrl:'https://kenali.co.id/wp-content/uploads/2023/08/1171399530.webp',
                      name: 'luffy'
                    ),
                    CustomCardType( imageUrl:'https://www.mundodeportivo.com/alfabeta/hero/2023/02/namionepiece.jpg?width=768&aspect_ratio=16:9&format=nowebp',
                      name: 'nami'
                    ),
                  ]
                )
              )
          )
      )
    )
           
   );
  }

  void displayDialogAndroid(BuildContext context){
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: ( context ) {
        return AlertDialog (
          elevation:5,
          title: const Text('one piece'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          content: const Column(
             mainAxisSize: MainAxisSize.min,
               children: [
                Text('mostar imagen', textDirection:TextDirection.rtl,),

                SizedBox( height: 10 ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                setState(() {
                  mostrandoBoton = false;
                });
              },
              child: const Text('aceptar', style: TextStyle( color: AppTheme.primary))
            ),
          ]
        );
      }
    );
   }
}
