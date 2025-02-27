import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:market_app/core/assets.dart';
import 'package:market_app/core/styles.dart';
import 'package:market_app/data/models/user_model.dart';

class UserCard extends StatelessWidget {
  final UserModel user;
  const UserCard({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 90,
          child: Stack(
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage(user.avatar),
                  radius: 40,
                ),
              ),
              if (user.isTop)
                Align(
                  alignment: Alignment(1, -1),
                  child: SvgPicture.asset(Assets.icKing),
                )
            ],
          ),
        ),
        AutoSizeText(
          user.username,
          style: context.primaryText.regular.s14.regular.grey,
        )
      ],
    );
  }
}
