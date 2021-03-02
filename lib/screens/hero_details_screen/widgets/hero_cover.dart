import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:heropedia/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:heropedia/models/heroes/heroes_model.dart';
import 'package:heropedia/screens/global_widgets/close_icon_button.dart';
import 'package:heropedia/screens/hero_details_screen/widgets/hero_cover_image.dart';

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
                  HeroCoverImage(
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
