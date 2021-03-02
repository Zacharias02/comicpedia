import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:heropedia/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:heropedia/models/heroes/heroes_model.dart';
import 'package:heropedia/screens/global_widgets/close_icon_button.dart';

class HeroCover extends StatelessWidget {
  final Result hero;

  const HeroCover({
    Key key,
    @required this.hero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.45,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: CachedNetworkImageProvider(hero.imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 5.0),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                kColorDarkGrey.withOpacity(0.10),
                kColorDarkGrey,
              ],
            ),
          ),
          child: Scaffold(
            backgroundColor: kColorTransparent,
            body: SafeArea(
              child: Stack(
                children: [
                  CloseIconButton(),
                  HeroImage(
                    heroTag: hero.heroId,
                    heroImageUrl: hero.imageUrl,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HeroImage extends StatelessWidget {
  final String heroImageUrl;
  final String heroTag;

  const HeroImage({
    Key key,
    @required this.heroImageUrl,
    @required this.heroTag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      left: 10,
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Container(
          height: 210,
          width: 150,
          child: Hero(
            tag: heroTag,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: heroImageUrl,
                progressIndicatorBuilder: (_, url, __) {
                  return Center(
                    child: SpinKitFadingCircle(
                      size: 40,
                      color: kColorLightGrey,
                    ),
                  );
                },
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
