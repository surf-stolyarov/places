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
                      style: AppTypography.headline2.copyWith(
                        color: AppColors.primaryColor,
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: [
                        Text(
                          sight.type.toLowerCase(),
                          style: AppTypography.headline5.copyWith(
                            fontWeight: FontWeight.w700,
                            color: AppColors.primaryColor,
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          Constants.clousedBefore(sight.clousedBefore),
                          style: AppTypography.headline5.copyWith(
                            fontWeight: FontWeight.w400,
                            color: AppColors.quaternaryColor,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      sight.details,
                      style: AppTypography.headline5.copyWith(
                        fontWeight: FontWeight.w400,
                        color: AppColors.secondaryColor,
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    PrimaryButton(
                      text: Constants.buildRouteText.toUpperCase(),
                      textStyle: AppTypography.headline5.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                      icon: AppAssets.icGo,
                      iconColor: Colors.white,
                      onTap: () {
                        debugPrint('Действие');
                      },
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        SecondaryButton(
                          text: Constants.scheduleText,
                          textStyle: AppTypography.headline5.copyWith(
                            color: AppColors.quaternaryColor,
                            fontWeight: FontWeight.w400,
                          ),
                          icon: AppAssets.icCalendar,
                          iconColor: AppColors.quaternaryColor,
                          onTap: () {
                            debugPrint('Действие');
                          },
                        ),
                        SecondaryButton(
                          text: Constants.addFavoriteText,
                          textStyle: AppTypography.headline5.copyWith(
                            color: AppColors.secondaryColor,
                            fontWeight: FontWeight.w400,
                          ),
                          icon: AppAssets.icHeart,
                          iconColor: AppColors.secondaryColor,
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
