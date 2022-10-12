import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/src/res/assets.dart';
import 'package:places/src/res/colors.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: 1,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppAssets.icList,
            color: AppColors.primaryColor,
            height: 24,
            width: 24,
          ),
          label: 'Список интересных мест',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppAssets.icMap,
            color: AppColors.primaryColor,
            height: 24,
            width: 24,
          ),
          label: 'Карта',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppAssets.icHeartSold,
            color: AppColors.primaryColor,
            height: 24,
            width: 24,
          ),
          label: 'Хочу посетить / Посещенные места',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppAssets.icSettings,
            color: AppColors.primaryColor,
            height: 24,
            width: 24,
          ),
          label: 'Настройки',
        ),
      ],
    );
  }
}
