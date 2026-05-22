import 'package:bkashapp/core/app_colors.dart';
import 'package:bkashapp/core/app_strings.dart';
import 'package:bkashapp/presentation/screens/home/widget/balance_check_button.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({super.key});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          CircleAvatar(radius: 22, child: Icon(Icons.person, size: 20)),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.userName,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.iconCircleBg,
                ),
              ),
              BalanceCheckButton()
            ],
          ),
         const Spacer(),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(child: Icon(Icons.search_sharp, size: 25,)),
              ),
          SizedBox(width: 8,),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(child: Image.asset('assets/bkash.png', color: AppColors.primary, width: 25, height: 25,)),
          ),

        ],
      ),
    );

  }
}

