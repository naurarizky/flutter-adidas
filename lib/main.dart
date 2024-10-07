import 'package:e_commerce/consts.dart';
import 'package:e_commerce/ui/splash/splash-screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FloShop());
}
class FloShop extends StatelessWidget {
  const FloShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Adidas',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Muli',
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: textColor),
          bodySmall: TextStyle(color: textColor)
        )
      ),
      //()=value
      home: const SplashScreen(),
      );
  }
}