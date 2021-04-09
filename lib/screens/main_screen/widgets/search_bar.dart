import 'package:flutter/material.dart';
import 'package:heropedia/services/debouncer.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:heropedia/screens/global_widgets/reactive_input_field.dart';
import 'package:heropedia/constants/style.dart';
import 'package:heropedia/blocs/heroes_bloc/heroes_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final form = FormGroup({
    'heroSearchKey': FormControl(),
  });

  @override
  void initState() {
    String searchKey = 'man';
    Debouncer debouncer = Debouncer(milliseconds: 750);

    /* Trigger search initially */
    context.read<HeroesBloc>().add(FetchHeroes(searchKey));

    /* Trigger search for value changes */
    form.valueChanges.listen((event) {
      searchKey = event['heroSearchKey'];

      if (searchKey != null) {
        if (searchKey.isEmpty) {
          searchKey = 'man';
        }
      } else if (searchKey == null) {
        searchKey = 'man';
      }

      debouncer.run(() async {
        context.read<HeroesBloc>().add(FetchHeroes(searchKey));
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ReactiveForm(
        formGroup: form,
        child: ReactiveInputField(
          formControlName: 'heroSearchKey',
          prefixIcon: Icon(
            Icons.search,
            color: kColorLightGrey,
          ),
          suffixIcon: ReactiveValueListenableBuilder<dynamic>(
            formControlName: 'heroSearchKey',
            builder: (context, formControl, child) {
              Widget _widget = SizedBox.shrink();

              if (formControl.value != null && formControl.value != '') {
                _widget = IconButton(
                  icon: Icon(
                    Icons.cancel,
                    color: kColorLightGrey,
                  ),
                  onPressed: () {
                    form.control('heroSearchKey').reset();
                    form.control('heroSearchKey').unfocus();
                  },
                );
              } else {
                _widget = SizedBox.shrink();
              }

              return _widget;
            },
          ),
        ),
      ),
    );
  }
}
