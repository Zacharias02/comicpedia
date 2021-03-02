import 'package:cached_network_image/cached_network_image.dart';
import 'package:comicpedia/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class HeroImageListingContainer extends StatelessWidget {
  final String imageUrl;

  const HeroImageListingContainer({
    Key key,
    this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 100,
      padding: EdgeInsets.all(10.0),
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
    );
  }
}
