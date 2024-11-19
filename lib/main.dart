import 'package:flutter/material.dart';
import 'package:netexa_machinetask/responsive/responsive_layout.dart';
import 'package:netexa_machinetask/responsive/screen/desktop_screen.dart';
import 'package:netexa_machinetask/responsive/screen/mobile_screen.dart';
import 'package:netexa_machinetask/responsive/screen/tablet_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home:   ResponsiveLayout(
          mobileScreen: MobileScreen(),
          tabletScreen: TabletScreen(),
          desktopScreen: DesktopScreen()),
    );
  }
}
