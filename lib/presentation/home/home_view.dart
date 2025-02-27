import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:market_app/core/constants.dart';
import 'package:market_app/core/styles.dart';
import 'package:market_app/presentation/home/components/banner.dart';
import 'package:market_app/presentation/home/components/product.dart';
import 'package:market_app/presentation/home/components/search.dart';
import 'package:market_app/presentation/home/components/user.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: AutoSizeText(
            logoName,
            style: context.logoText,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const HomeSearch(),
              const HomeBanner(), 
              const HomeProduct(),
              const HomeUser(),
            ],
          ),
        ),
      ),
    );
  }
}
