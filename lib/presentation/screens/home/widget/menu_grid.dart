import 'package:bkashapp/core/app_colors.dart';
import 'package:bkashapp/core/app_strings.dart';
import 'package:flutter/material.dart';

import '../../../../data/model/home_menu_item_model.dart';
import '../provider/home_provider.dart';
import 'menu_grid_item.dart';
import 'package:provider/provider.dart';

class MenuGrid extends StatelessWidget {
  const MenuGrid({super.key});


 static const double gridCollapsedHeight = 358.0;

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, provider, _) {
        final items = provider.visibleItems;
        final isExpanded = provider.isExpanded;

        return SizedBox(
          height: isExpanded ? null : gridCollapsedHeight,
          child: Stack(
            alignment: Alignment.bottomCenter,
            clipBehavior: Clip.none,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: isExpanded ? 0 : 15),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 6,
                    mainAxisSpacing: 8,
                    childAspectRatio: 0.85,
                  ),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return MenuGridItem(item: items[index]);
                  },
                ),
              ),

              if (!isExpanded)
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  height: 60,
                  child: IgnorePointer(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.white.withOpacity(0.0),
                            Colors.white.withOpacity(0.6),
                            Colors.white,
                          ],
                        ),
                      ),
                    ),
                  ),
                ),



              Positioned(
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.08),
                        blurRadius: 4,
                        offset: const Offset(0, 2),
                      )
                    ],
                  ),
                  child: OutlinedButton.icon(
                    onPressed: provider.toggleExpanded,
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: AppColors.primary.withOpacity(0.4)),
                      padding:  EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                      minimumSize: Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    icon: Icon(
                      isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                      color: AppColors.primary,
                      size: 22,
                    ),
                    label: Text(
                      isExpanded ? AppStrings.seeLess : AppStrings.seeMore,
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
