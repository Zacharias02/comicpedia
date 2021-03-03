import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:heropedia/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:heropedia/models/heroes/heroes_model.dart';
import 'package:heropedia/screens/global_widgets/close_icon_button.dart';
import 'package:heropedia/screens/global_widgets/custom_chip.dart';
import 'package:heropedia/screens/hero_details_screen/widgets/hero_cover_image.dart';
import 'package:heropedia/services/utils.dart';

class HeroCover extends StatelessWidget {
  final Result hero;

  const HeroCover({
    Key key,
    @required this.hero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Utils _utils = Utils();

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
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0, left: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        HeroCoverImage(
                          heroTag: hero.heroId,
                          heroImageUrl: hero.imageUrl,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomChip(
                                content: hero.publisherName,
                                color: _utils.getColorByPublisherName(
                                  hero.publisherName,
                                ),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                hero.heroFullName,
                                style: kTextHeader1.copyWith(fontSize: 24),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                  bottom: 10.0,
                                  top: 6.0,
                                ),
                                width: 150,
                                child: Text(
                                  hero.firstAppearance,
                                  style: kTextLight,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
