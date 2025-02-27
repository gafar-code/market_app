import 'package:flutter/material.dart';
import 'package:market_app/core/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeBanner extends StatefulWidget {
  const HomeBanner({super.key});

  @override
  State<HomeBanner> createState() => _HomeBannerState();
}

class _HomeBannerState extends State<HomeBanner> {
  late PageController _pageC;

  @override
  void initState() {
    _pageC = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.3,
      child: Stack(
        children: [
          PageView(
            controller: _pageC,
            children: dummyBanners
                .map((img) => Image.asset(
                      img,
                      fit: BoxFit.cover,
                    ))
                .toList(),
          ),
          Align(
            alignment: Alignment(0, .85),
            child: SmoothPageIndicator(
              controller: _pageC,
              count: 4,
              effect: ExpandingDotsEffect(
                expansionFactor: 2,
                dotColor: Colors.white.withValues(alpha: .5),
                activeDotColor: Colors.white,
                spacing: 8,
                dotHeight: 8,
                dotWidth: 8,
              ),
            ),
          )
        ],
      ),
    );
  }
}
