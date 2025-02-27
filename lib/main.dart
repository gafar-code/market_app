import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:market_app/core/styles.dart';
import 'package:market_app/routes/app_routes.dart';

void main() {
  runApp(const MarketApp());
}

class MarketApp extends StatefulWidget {
  const MarketApp({super.key});

  @override
  State<MarketApp> createState() => _MarketAppState();
}

class _MarketAppState extends State<MarketApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness:
          Brightness.dark,
    ));

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: context.theme,
      routerConfig: AppRoutes.router,
    );
  }
}
