import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsiveadaptive/dash_doard/screen/home_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(), // Wrap your app
    ),
    // const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomeScreen()
        // const DonateScreen(),
        );
  }
}
