import 'package:cached_network_image/cached_network_image.dart';
import 'package:heropedia/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class HeroImageListingContainer extends StatelessWidget {
  final String imageUrl;
  final String heroFullName;
  final Function onTapped;

  const HeroImageListingContainer({
    Key key,
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
            ClipRRect(
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
            Padding(
              padding: EdgeInsets.only(right: 4.0, bottom: 5.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  padding: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    color: kColorDarkGrey.withOpacity(0.75),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Text(
                    heroFullName,
                    style: kTextSemiBold.copyWith(fontSize: 15),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
