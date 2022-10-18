import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/src/common/constants/constants.dart';
import 'package:places/src/feature/sight/ui/screens/sight_list_screen.dart';
import 'package:places/src/feature/sight/ui/screens/visiting_screen.dart';
import 'package:places/src/feature/sight/ui/screens/sight_details_screen.dart';
import 'package:places/src/res/themes.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.appName,
      theme: darkThemeData,
      home: const SightListScreen(),
      // home: const VisitingScreen(),
      // home: SightDetailsScreen(sight: mocks.first),
      debugShowCheckedModeBanner: false,
    );
  }
}
