import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:planto/splash-screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //to make the app adaptive for all mobile devices
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => MaterialApp(
        home: const SplashScreen(),
        debugShowCheckedModeBanner: false,
        title: "Planto",
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 49, 137, 52),
            onPrimary: const Color.fromARGB(255, 49, 137, 52),
            onSecondary: const Color.fromARGB(255, 218, 255, 220),
          ),
          buttonTheme: const ButtonThemeData(
            buttonColor: Color.fromARGB(255, 54, 140, 57),
          ),
          fontFamily: 'Poppins',
        ),
      ),
    );
  }
}
