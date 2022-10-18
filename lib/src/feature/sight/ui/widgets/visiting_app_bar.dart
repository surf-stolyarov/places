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
            style: Theme.of(context).textTheme.headline4,
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
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  color: Theme.of(context).cardColor,
                ),
                child: const TabBar(
                  tabs: [
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
