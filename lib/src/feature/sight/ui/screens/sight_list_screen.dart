import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/src/common/widgets/navigation/bottomBar.dart';
import 'package:places/src/feature/sight/ui/widgets/sight_card.dart';
import 'package:places/src/feature/sight/ui/widgets/sight_list_app_bar.dart';

class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  State<SightListScreen> createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: const SightListAppBar(),
      body: BuildCardScreen(sights: mocks),
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: const BottomBar(),
    );
  }
}
