import 'package:flutter/material.dart';

class CustomCardType extends StatelessWidget {

  final String imageUrl;
  final String? name;

  const CustomCardType({
    super.key, 
    required this.imageUrl, 
    required this.name,
    });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ) ,
      elevation: 15,
      shadowColor:const Color.fromARGB(211, 12, 0, 0),
      child: Column(
        children: [

           FadeInImage(
            image: NetworkImage( imageUrl ), 
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
            ),

          if ( name != null)
            Container(
              alignment: AlignmentDirectional.center,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text( name! )
              )

        ],
      ),

    );
  }
}