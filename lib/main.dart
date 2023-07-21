import 'package:flutter/material.dart';
import 'package:responsivedesign2/desktop_scaffold.dart';
import 'package:responsivedesign2/homepage.dart';
import 'package:responsivedesign2/mobile_scaffold.dart';
import 'package:responsivedesign2/router.dart';
import 'package:responsivedesign2/splash.dart';
import 'package:responsivedesign2/tablet_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: 
      ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // ThemeData.dark().copyWith(
      //   scaffoldBackgroundColor: Pallete.backgroundColor,
      // ),
      // onGenerateRoute: (settings)=> generateRoute(settings),
      home: splash(),
      // ResponsiveLayout(
      //   mobileScaffold: mobileScaffold(),
      //   tabletScaffold: TabletScaffold(),
      //   desktopScaffold: DesktopScaffold(),
      // )
    );
  }
}

