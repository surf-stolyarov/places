import 'package:flutter/material.dart';
import 'package:places/src/common/constants/constants.dart';
import 'package:places/src/res/typography.dart';

class VisitingAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(124);

  const VisitingAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Container(
        child: Center(
          child: Text(
            Constants.appBarVisitingTitle,
            style: AppTypography.headline4.copyWith(
              color: Color(0xFF252849),
            ),
          ),
        ),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      bottom: PreferredSize(
        preferredSize: preferredSize,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  color: Color(0xFFF5F5F5),
                ),
                child: TabBar(
                  labelColor: Color(0xFFFFFFFF),
                  unselectedLabelColor: Color(0xFF7C7E92),
                  labelStyle: AppTypography.headline5.copyWith(
                    color: Color(0xFF252849),
                  ),
                  indicator: const BoxDecoration(
                    color: Color(0xFF3B3E5B),
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                  tabs: const [
                    Tab(text: 'Хочу посетить'),
                    Tab(text: 'Посетил'),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
