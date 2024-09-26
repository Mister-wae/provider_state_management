import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/driver_license.dart';
import 'package:provider_state_management/driver_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) => DriverProvider(),
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DriverLicenseScreen(),
    );
  }
}
