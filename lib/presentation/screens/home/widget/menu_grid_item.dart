import 'package:flutter/material.dart';

import '../../../../core/app_colors.dart';
import '../../../../data/model/home_menu_item_model.dart';

class MenuGridItem extends StatelessWidget {
  const MenuGridItem({super.key, required this.item});
  final HomeMenuItemModel item;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: AppColors.iconCircleBg,
                shape: BoxShape.circle,
              ),
              child: Icon(item.iconData, size: 28, color: item.iconColor)
          ),
          SizedBox(height: 8),
          Text(
            item.label,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black87,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
