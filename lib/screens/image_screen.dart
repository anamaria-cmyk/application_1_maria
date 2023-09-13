import 'package:application_1_maria/themes/app_theme.dart';
import 'package:flutter/material.dart';

class Imagescreen extends StatefulWidget {

  const  Imagescreen ({super.key});

  @override
  State<Imagescreen> createState() => _ImagescreenState();
}

  class _ImagescreenState extends State<Imagescreen> {

    double _imagevalue  = 100;
    bool _imagesEnabled = true;

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.primary,
        title: const Text('image'),
      ),
      body: Column(
        children: [
          Slider(
            activeColor: AppTheme.primary,
            min: 50,  
            max: 400,
            value: _imagevalue, 
            onChanged: _imagesEnabled
             ? (value) {
              _imagevalue = value;
              setState(() {});
            }
            :null
          ),
          
          Expanded(
            child: SingleChildScrollView(
              child: Image (
                image: const NetworkImage('https://static.wikia.nocookie.net/onepunchman/images/d/d7/One_Punch-Man_encyclopedia.png/revision/latest?cb=20190805154810&path-prefix=es'),
                fit: BoxFit.contain,
                width: _imagevalue,
                ),
            )
          )
        ],
      ),
    );
  }
}

  



