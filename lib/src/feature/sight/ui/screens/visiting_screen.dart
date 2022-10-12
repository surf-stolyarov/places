import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/src/common/widgets/navigation/bottomBar.dart';
import 'package:places/src/feature/sight/ui/widgets/sight_card_visiting.dart';
import 'package:places/src/feature/sight/ui/widgets/visiting_app_bar.dart';

class VisitingScreen extends StatefulWidget {
  const VisitingScreen({Key? key}) : super(key: key);

  @override
  _VisitingScreenState createState() => _VisitingScreenState();
}

class _VisitingScreenState extends State<VisitingScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: const VisitingAppBar(),
        body: TabBarView(
          children: [
            Column(
              children: [
                SightCard(sight: mocks[0]),
              ],
            ),
            Column(
              children: [
                SightCard(sight: mocks[1]),
              ],
            ),
          ],
        ),
        bottomNavigationBar: const BottomBar(),
      ),
    );
  }
}
