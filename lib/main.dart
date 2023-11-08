import 'package:flutter/material.dart';
import 'package:qr_access/components/theme_data.dart';
import 'package:qr_access/pages/login.dart';
//import 'package:qr_flutter/qr_flutter.dart';

// QrImageView(
//   data: '$_counter',
//   version: QrVersions.auto,
//   size: 200.0,
// ),

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: primaryTheme,
      home: const LoginPage(),
    );
  }
}
