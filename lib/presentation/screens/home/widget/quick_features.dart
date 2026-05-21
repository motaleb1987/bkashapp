import 'package:flutter/material.dart';

import '../../../../core/app_colors.dart';
import '../../../../core/app_strings.dart';

class QuickFeatures extends StatelessWidget {
  const QuickFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: double.infinity, height: 8),
          Text(
            AppStrings.quickFeatures,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 16,),
          Container(
            height: 45,
            width: 120,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey,
              )
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.deepPurple,
                      )
                    ),

                  ),
                ),
                Text('NAEEM Tel...')
              ],
            )

          )
        ],
      ),
    );
  }
}
