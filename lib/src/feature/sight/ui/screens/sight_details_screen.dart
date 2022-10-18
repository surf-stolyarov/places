import 'package:flutter/material.dart';
import 'package:places/src/common/constants/constants.dart';
import 'package:places/src/common/widgets/button/primary.dart';
import 'package:places/src/common/widgets/button/secondary.dart';
import 'package:places/src/common/widgets/image_loader.dart';
import 'package:places/src/feature/sight/data/models/sight.dart';
import 'package:places/src/res/assets.dart';
import 'package:places/src/res/colors.dart';
import 'package:places/src/res/typography.dart';

class SightDetailsScreen extends StatelessWidget {
  final Sight sight;

  const SightDetailsScreen({
    Key? key,
    required this.sight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          iconSize: 20,
          onPressed: () {
            debugPrint('Назад!');
          },
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 360,
                width: double.infinity,
                child: ImageLoader(url: sight.url),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      sight.name,
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: [
                        Text(
                          sight.type.toLowerCase(),
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          Constants.clousedBefore(sight.clousedBefore),
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      sight.details,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    PrimaryButton(
                      text: Constants.buildRouteText.toUpperCase(),
                      textStyle: Theme.of(context).textTheme.button,
                      icon: AppAssets.icGo,
                      iconColor: Colors.white,
                      onTap: () {
                        debugPrint('Действие');
                      },
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const Divider(
                      color: AppColors.dividerColor,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        SecondaryButton(
                          text: Constants.scheduleText,
                          textStyle: Theme.of(context).textTheme.bodyText2,
                          icon: AppAssets.icCalendar,
                          iconColor: Theme.of(context)
                              .buttonTheme
                              .colorScheme
                              ?.secondary,
                          onTap: () {
                            debugPrint('Действие');
                          },
                        ),
                        SecondaryButton(
                          text: Constants.addFavoriteText,
                          textStyle: Theme.of(context).textTheme.bodyText1,
                          icon: AppAssets.icHeart,
                          iconColor: Theme.of(context)
                              .buttonTheme
                              .colorScheme
                              ?.primary,
                          onTap: () {
                            debugPrint('Действие');
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
