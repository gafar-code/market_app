import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:market_app/core/assets.dart';
import 'package:market_app/core/styles.dart';
import 'package:market_app/data/models/product_model.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  const ProductCard({super.key, required this.product});
  
  String get _getRating {
    switch (product.ratingTop) {
      case 1:
        return Assets.icTopGold;
      case 2:
        return Assets.icTopSilver;
      case 3:
        return Assets.icTopBronze;
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 124,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              height: 124,
              margin: EdgeInsets.only(right: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: context.primaryBorder,
                image: DecorationImage(
                  image: AssetImage(product.image),
                  fit: BoxFit.contain,
                ),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment(-.9, -.9),
                    child: SvgPicture.asset(_getRating),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AutoSizeText(
                  product.name,
                  style: context.primaryText.s12.bold,
                  maxLines: 2,
                ),
                ...product.descriptions.split(',').map((e) => Row(
                      children: [
                        AutoSizeText(
                          '•',
                          style: context.primaryText.bold.s12.subtle,
                        ),
                        SizedBox(width: 4),
                        Expanded(
                          child: AutoSizeText(
                            e,
                            style: context.primaryText.regular.s12.subtle,
                            maxLines: 1,
                          ),
                        ),
                      ],
                    )),
                SizedBox(height: 6),
                Row(
                  children: [
                    SvgPicture.asset(Assets.icStar),
                    AutoSizeText(
                      "${product.rating}",
                      style: context.primaryText.bold.s10.gold,
                    ),
                    SizedBox(width: 4),
                    AutoSizeText(
                      '(${product.ratingCount})',
                      style: context.primaryText.bold.s10.grey5,
                    )
                  ],
                ),
                SizedBox(height: 6),
                Row(
                  spacing: 6,
                  children: product.tags
                      .split(',')
                      .map(
                        (e) => Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                          decoration: BoxDecoration(
                              color: context.grey25,
                              borderRadius: BorderRadius.circular(6)),
                          child: AutoSizeText(
                            e,
                            style: context.primaryText.regular.s10.grey,
                          ),
                        ),
                      )
                      .toList(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
