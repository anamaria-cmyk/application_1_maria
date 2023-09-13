import 'package:application_1_maria/router/app_routers.dart';
import 'package:application_1_maria/themes/app_theme.dart';
import 'package:flutter/material.dart';

class InicioScreen extends StatelessWidget {
  const InicioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final options = AppRoutes.menuOptions;
    options[1];
     return MaterialApp(
      home: Scaffold( 
        body: SafeArea(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color:  AppTheme.primary,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                           Navigator.pushNamed(context, options[1].route);
                        },
                        child: const Text('1', style: TextStyle( color: Colors.white)),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, options[2].route );
                        },
                        child: const  Text('2', style: TextStyle( color: Colors.white)),
                      ),
                      TextButton(
                        onPressed:() {
                           Navigator.pushNamed(context, options[3].route );
                        },
                        child: const  Text('3', style: TextStyle( color: Colors.white)),
                      ),
                    ],
                  ),
                ),
                const Expanded(
                   child: Center(
                    child: Text('INCIO'),
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );  
  } 
}