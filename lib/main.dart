// import 'package:cat_dog_classifier/helper/transitions.dart';
import 'package:cat_dog_classifier/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  Future.delayed(const Duration(seconds: 3), () {
    FlutterNativeSplash.remove();
  });
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cat and Dog Classifier',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
      //  AnimatedSplashScreen(
      //   duration: 2000,
      //   splash: 'assets/images/Webcapture_8-3-2023_23210_.jpeg',
      //   nextScreen: 
        const HomePage(),
        // splashTransition: SplashTransition.rotationTransition,
        // pageTransitionType: PageTransitionType.scale,
        // alignment: Alignment.center,
        // navigateAfterSeconds: const HomePage(),
        // title: const Text(
        //   'Cat and Dog Classifier',
        //   style: TextStyle(
        //       fontWeight: FontWeight.bold,
        //       fontSize: 25,
        //       color: Color(0x00FFFF)),
        // ),
      // ),
      debugShowCheckedModeBanner: false,
    );
  }
}
