
import 'package:flutter/material.dart';
import 'presentation/screens/home/provider/home_provider.dart';
import 'package:provider/provider.dart';
import 'presentation/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
      
          colorScheme: .fromSeed(seedColor: Colors.deepPurple),
        ),
        home: SplashScreen(),
      ),
    );
  }
}
