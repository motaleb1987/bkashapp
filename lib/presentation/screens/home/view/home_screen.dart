import 'package:bkashapp/core/app_colors.dart';
import 'package:flutter/material.dart';
import '../widget/home_app_bar.dart';
import '../widget/menu_grid.dart';
import '../widget/quick_fearues_all_cards.dart';
import '../widget/quick_features.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: HomeAppBar(),
        automaticallyImplyLeading: false,
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MenuGrid(),
            SizedBox(height: 16),
            Image.asset('assets/offfer_banner.png'),
            QuickFeatures(),
            SizedBox(height: 10),
            QuickFeaturesAllCards(),
          ],
        ),
      ),
    );
  }
}


