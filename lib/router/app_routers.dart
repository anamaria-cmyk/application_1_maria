import 'package:application_1_maria/screens/botton_screen.dart';
import 'package:application_1_maria/screens/home_screen.dart';
import 'package:application_1_maria/screens/inputs_screen.dart';
import 'package:application_1_maria/screens/screens.dart';
import 'package:flutter/material.dart';
import '../models/menu_options.dart';


class AppRoutes {

  static const initialRoute = 'home';

  static final menuOptions = <MenuOptions>[

    MenuOptions(route: 'home',   name: 'home',    screen:  const HomeScreen ()),
    MenuOptions(route: 'image1', name: 'image1',  screen:  const Imagescreen()),
    MenuOptions(route: 'image2', name: 'image2',  screen:  const BottonScreen()),
    MenuOptions(route: 'inputs', name: 'inputs1', screen:  const InputsScreen ()),
    MenuOptions(route: 'inicio', name: 'inicio',  screen:  const InicioScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {

    Map<String, Widget Function(BuildContext)> appRouters = {};

    appRouters.addAll({  'home' : ( BuildContext context ) => const HomeScreen()});

    for (final option in menuOptions) {
      appRouters.addAll({ option.route : ( BuildContext context ) => option.screen});
    }

    return appRouters;
 }

 static Route<dynamic> onGenerateRoute(RouteSettings settings) {
  return MaterialPageRoute(
    builder: (context) => const Imagescreen(),

  );
 }
}





