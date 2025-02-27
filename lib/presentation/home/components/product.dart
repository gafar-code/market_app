import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:market_app/core/constants.dart';
import 'package:market_app/core/styles.dart';
import 'package:market_app/presentation/home/components/product_card.dart';

class HomeProduct extends StatefulWidget {
  const HomeProduct({super.key});

  @override
  State<HomeProduct> createState() => _HomeProductState();
}

class _HomeProductState extends State<HomeProduct> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AutoSizeText(
                        '제일 핫한 리뷰를 만나보세요',
                        style: context.primaryText.regular.s12.grey,
                      ),
                      AutoSizeText(
                        '리뷰️  랭킹⭐ top 3',
                        style: context.primaryText.s18.medium,
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.chevron_right,
                    color: context.subtle,
                    size: 28,
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: Column(
              spacing: 22,
              children: dummyTopProduct.map((e)=> ProductCard(product: e)).toList(),
            ),
          )
        ],
      ),
    );
  }
}
