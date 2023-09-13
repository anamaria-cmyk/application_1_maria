import 'package:application_1_maria/widgets/hometarjeta_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
   @override
    Widget build(BuildContext context) {
      return const Scaffold(
        body: Column(
          children: [
            SafeArea(
              child: Image(
                image: NetworkImage('https://assets.stickpng.com/images/5852cd5c58215f0354495f67.png'),
                height: 250,
              ),
            ),
            HomeTarjeta(
              
            )
          ],
        ),
      );
    }
  }
