import 'package:heropedia/blocs/heroes_bloc/heroes_bloc.dart';
import 'package:heropedia/constants/style.dart';
import 'package:heropedia/models/heroes/heroes_model.dart';
import 'package:heropedia/screens/hero_details_screen/hero_details_screen.dart';
import 'package:heropedia/screens/main_screen/widgets/hero_image_listing_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class HeroListing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HeroesBloc, HeroesState>(
      builder: (context, state) {
        Widget widget = SizedBox.shrink();

        if (state is HeroesLoading) {
          widget = Expanded(
            child: Center(
              child: SpinKitFadingGrid(
                color: kColorLightGrey,
              ),
            ),
          );
        }

        if (state is HeroesFetchError) {
          final String message = state.errorMessage;

          widget = Center(child: Text(message));
        }

        if (state is HeroesFetched) {
          widget = Expanded(
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              children: state.heroResult
                  .map(
                    (Result hero) => HeroImageListingContainer(
                      heroId: hero.heroId,
                      imageUrl: hero.imageUrl,
                      heroFullName: hero.heroFullName,
                      onTapped: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HeroDetailsScreen(
                              hero: hero,
                            ),
                          ),
                        );
                      },
                    ),
                  )
                  .toList(),
            ),
          );
        }

        return widget;
      },
    );
  }
}
