import 'package:flutter/material.dart';

import '../../../../core/app_colors.dart';
import 'quick_features_card.dart';

class QuickFeaturesAllCards extends StatelessWidget {
  const QuickFeaturesAllCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        QuickFeaturesCard(
          cardTitle: 'My Offers',
          icon: Icons.local_offer_outlined,
          cardColor: AppColors.lightYellowBg,
          iconColor: AppColors.yellowDotActive,
        ),
        QuickFeaturesCard(
          cardTitle: 'Coupons',
          icon: Icons.percent_outlined,
          cardColor: AppColors.lightBlueBg,
          iconColor: AppColors.lightBlue,
        ),
        QuickFeaturesCard(
          cardTitle: 'Rewards',
          icon: Icons.coffee_rounded,
          cardColor: AppColors.lightGreenBg,
          iconColor: AppColors.lightOrangeBg,
        ),
      ],
    );
  }
}