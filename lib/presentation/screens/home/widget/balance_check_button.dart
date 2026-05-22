import 'package:flutter/material.dart';

import '../../../../core/app_colors.dart';
import '../../../../core/app_strings.dart';

class BalanceCheckButton extends StatefulWidget {
  const BalanceCheckButton({super.key});

  @override
  State<BalanceCheckButton> createState() => _BalanceCheckButtonState();
}

class _BalanceCheckButtonState extends State<BalanceCheckButton> {

  bool _isTapped = false;

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.all(Radius.elliptical(8, 8)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Center(
              child: Text(
                '৳',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(width: 8),
          GestureDetector(
            onTap: () {
              setState(() {
                _isTapped = !_isTapped;
              });
            },
            child: Container(
              height: 18,
              width: 95,
              child: Text(
                _isTapped ? AppStrings.totalBalance : AppStrings.tapForBalance,
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
