import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:responsivedesign2/desktop_scaffold.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    _navigaatetohome();
  }

  _navigaatetohome() async {
    await Future.delayed(const Duration(milliseconds: 4000), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => const DesktopScaffold()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Lottie.network(
          'https://lottie.host/d1006ded-1e5e-4276-8247-c73a40cf5e13/0p1dZ4F3us.json'),
    ));
  }
}