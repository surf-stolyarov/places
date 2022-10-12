import 'package:flutter/material.dart';
import 'package:places/src/common/constants/constants.dart';
import 'package:places/src/res/colors.dart';
import 'package:places/src/res/typography.dart';

class PlacesAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(152);

  const PlacesAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      bottom: PreferredSize(
        preferredSize: preferredSize,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            child: Text(
              Constants.appBarTitle,
              style: AppTypography.headline1.copyWith(
                color: AppColors.secondaryColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
