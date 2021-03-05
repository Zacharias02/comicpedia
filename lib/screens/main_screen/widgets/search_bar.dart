import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:heropedia/screens/global_widgets/reactive_input_field.dart';
import 'package:heropedia/constants/style.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final form = FormGroup({
      'heroSearchKey': FormControl(),
    });

    return ReactiveForm(
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
    );
  }
}
