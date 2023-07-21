import 'package:flutter/material.dart';
import 'package:responsivedesign2/features/auth/screens/auth_screen.dart';

class mobileScaffold extends StatefulWidget {
  const mobileScaffold({super.key});

  @override
  State<mobileScaffold> createState() => _mobileScaffoldState();
}

class _mobileScaffoldState extends State<mobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return AuthScreen();
  }
}