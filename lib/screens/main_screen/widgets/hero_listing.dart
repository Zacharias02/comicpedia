import 'package:comicpedia/blocs/heroes_bloc/heroes_bloc.dart';
import 'package:comicpedia/models/hero/hero_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HeroListing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HeroesBloc, HeroesState>(
      builder: (context, state) {
        print(state);

        if (state is HeroesLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state is HeroesFetchError) {
          final String message = state.errorMessage;

          return Center(child: Text(message));
        }

        if (state is HeroesFetched) {
          return SingleChildScrollView(
            child: Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: state.heroResult
                  .map(
                    (Result hero) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        height: 150,
                        child: Image.network(hero?.heroImage?.url),
                      ),
                    ),
                  )
                  .toList(),
              // children: [
              //   Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: Container(
              //       width: 100,
              //       height: 150,
              //       color: Colors.red,
              //     ),
              //   ),
              //   Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: Container(
              //       width: 100,
              //       height: 150,
              //       color: Colors.red,
              //     ),
              //   ),
              //   Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: Container(
              //       width: 100,
              //       height: 150,
              //       color: Colors.red,
              //     ),
              //   ),
              //   Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: Container(
              //       width: 100,
              //       height: 150,
              //       color: Colors.red,
              //     ),
              //   ),
              //   Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: Container(
              //       width: 100,
              //       height: 150,
              //       color: Colors.red,
              //     ),
              //   ),
              //   Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: Container(
              //       width: 100,
              //       height: 150,
              //       color: Colors.red,
              //     ),
              //   ),
              //   Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: Container(
              //       width: 100,
              //       height: 150,
              //       color: Colors.red,
              //     ),
              //   ),
              //   Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: Container(
              //       width: 100,
              //       height: 150,
              //       color: Colors.red,
              //     ),
              //   ),
              //   Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: Container(
              //       width: 100,
              //       height: 150,
              //       color: Colors.red,
              //     ),
              //   ),
              //   Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: Container(
              //       width: 100,
              //       height: 150,
              //       color: Colors.red,
              //     ),
              //   ),
              //   Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: Container(
              //       width: 100,
              //       height: 150,
              //       color: Colors.red,
              //     ),
              //   ),
              //   Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: Container(
              //       width: 100,
              //       height: 150,
              //       color: Colors.red,
              //     ),
              //   ),
              //   Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: Container(
              //       width: 100,
              //       height: 150,
              //       color: Colors.red,
              //     ),
              //   ),
              //   Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: Container(
              //       width: 100,
              //       height: 150,
              //       color: Colors.red,
              //     ),
              //   ),
              //   Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: Container(
              //       width: 100,
              //       height: 150,
              //       color: Colors.red,
              //     ),
              //   ),
              // ],
            ),
          );

          // ListView(
          //   children: state.heroResult
          //       .map(
          //         (Result hero) => Container(
          //           height: 1000,
          //           child: Image.network(hero?.heroImage?.url),
          //         ),
          //       )
          //       .toList(),
          // );
        }

        return SizedBox();
      },
    );
  }
}
