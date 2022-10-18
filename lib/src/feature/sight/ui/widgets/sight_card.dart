import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/src/common/widgets/image_loader.dart';
import 'package:places/src/feature/sight/data/models/sight.dart';
import 'package:places/src/res/assets.dart';

class BuildCardScreen extends StatelessWidget {
  final List<Sight> sights;

  const BuildCardScreen({
    Key? key,
    required this.sights,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> sightItems =
        sights.map((sight) => SightCard(sight: sight)).toList();

    return SingleChildScrollView(
      child: Column(
        children: sightItems,
      ),
    );
  }
}

class SightCard extends StatelessWidget {
  final Sight sight;

  const SightCard({
    Key? key,
    required this.sight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: 16,
      ),
      child: AspectRatio(
        aspectRatio: 3 / 2,
        child: SizedBox(
          height: 188,
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    _SightCardImage(sight: sight),
                    Positioned(
                      top: 16,
                      left: 16,
                      child: _SightCardPlaceType(sight: sight),
                    ),
                    const Positioned(
                      top: 16,
                      right: 16,
                      child: _SightCardActions(),
                    ),
                  ],
                ),
              ),
              Expanded(child: _CardTextContent(sight: sight)),
            ],
          ),
        ),
      ),
    );
  }
}

class _SightCardPlaceType extends StatelessWidget {
  final Sight sight;

  const _SightCardPlaceType({
    Key? key,
    required this.sight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      sight.type.toLowerCase(),
      style: Theme.of(context).textTheme.button,
    );
  }
}

class _SightCardImage extends StatelessWidget {
  final Sight sight;

  const _SightCardImage({
    required this.sight,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
      ),
      child: AspectRatio(
        aspectRatio: 3,
        child: ImageLoader(
          url: sight.url,
        ),
      ),
    );
  }
}

class _SightCardActions extends StatelessWidget {
  const _SightCardActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      AppAssets.icHeart,
      color: Colors.white,
      height: 24,
      width: 24,
    );
  }
}

class _CardTextContent extends StatelessWidget {
  final Sight sight;

  const _CardTextContent({
    required this.sight,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).secondaryHeaderColor,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 16,
            ),
            Text(
              sight.name,
              style: Theme.of(context).textTheme.headline4,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              sight.details,
              style: Theme.of(context).textTheme.bodyText2,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}
