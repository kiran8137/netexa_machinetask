

import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key, required this.mobileScreen, required this.tabletScreen, required this.desktopScreen});

  final Widget mobileScreen;
  final Widget tabletScreen;
  final Widget desktopScreen;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder:(context , constraints){
        if(constraints.maxWidth < 400){
          return mobileScreen;
        }else if(constraints.maxWidth < 1000){
          return tabletScreen;
        }else{
          return desktopScreen;
        }
      }
      );
  }
}