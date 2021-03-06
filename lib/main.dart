import 'dart:ui';

import 'package:hubui/views/screens/dashboard_screen.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

import 'constans/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DashboardProvider(),
      child: MaterialApp(
        title: 'Frend Hub',
        theme: Apptheme.basic(),
        home: const DashboardScreen(),
        scrollBehavior: CustomScrollBehaviour(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class CustomScrollBehaviour extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
