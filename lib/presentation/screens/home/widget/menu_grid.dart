import 'package:bkashapp/core/app_colors.dart';
import 'package:bkashapp/core/app_strings.dart';
import 'package:flutter/material.dart';

import '../../../../data/model/home_menu_item_model.dart';
import '../provider/home_provider.dart';
import 'menu_grid_item.dart';
import 'package:provider/provider.dart';

class MenuGrid extends StatelessWidget {
  const MenuGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, provider, _) {
        final items = provider.visibleItems;
        final isExpanded = provider.isExpanded;

        return Column(
          children: [
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 8,
                mainAxisSpacing: 16,
                childAspectRatio: 0.78,
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return MenuGridItem(item: items[index]);
              },
            ),
            OutlinedButton.icon(
              onPressed: provider.toggleExpanded,
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: AppColors.primary),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                )
              ),
              label: Text(
                isExpanded ? AppStrings.seeLess : AppStrings.seeMore,
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
