
import 'package:bkashapp/core/app_colors.dart';
import 'package:bkashapp/presentation/screens/home/widget/menu_grid.dart';
import 'package:flutter/material.dart';

import '../widget/home_app_bar.dart';

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
      body: Column(children: [
        MenuGrid()
      ],),
    );
  }
}
