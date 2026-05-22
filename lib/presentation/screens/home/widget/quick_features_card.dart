import 'package:flutter/material.dart';

import '../../../../core/app_colors.dart';

class QuickFeaturesCard extends StatelessWidget {
  const QuickFeaturesCard({
    super.key,
    required this.cardTitle,
    required this.icon,
    required this.cardColor,
    required this.iconColor,
  });

  final String cardTitle;
  final IconData icon;
  final Color cardColor;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96,
      width: 120,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: iconColor),
            SizedBox(height: 8),
            Text(
              cardTitle,
              style: TextStyle(
                color: AppColors.textDark,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
