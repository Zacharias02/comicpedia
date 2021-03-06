import 'package:cached_network_image/cached_network_image.dart';
import 'package:heropedia/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:heropedia/screens/global_widgets/custom_chip.dart';

class HeroImageListingContainer extends StatelessWidget {
  final String heroId;
  final String imageUrl;
  final String heroFullName;
  final Function onTapped;

  const HeroImageListingContainer({
    Key key,
    this.heroId,
    this.imageUrl,
    this.heroFullName,
    this.onTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        height: 150,
        width: 100,
        padding: EdgeInsets.all(10.0),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Hero(
              tag: heroId,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl: imageUrl,
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
            CustomChip(content: heroFullName),
          ],
        ),
      ),
    );
  }
}
