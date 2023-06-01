import 'package:co2_tracker/router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'CO2 Tracker',
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.assistantTextTheme(
          Theme.of(context).textTheme,
        ),
        colorScheme: const ColorScheme.highContrastLight(
          primary: Colors.greenAccent,
        ),
      ),
      routerConfig: router,
    );
  }
}
