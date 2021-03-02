import 'package:cached_network_image/cached_network_image.dart';
import 'package:heropedia/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class HeroCoverImage extends StatelessWidget {
  final String heroImageUrl;
  final String heroTag;

  const HeroCoverImage({
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
