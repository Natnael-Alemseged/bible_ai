import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'app_preferences_viewmodel.dart';

class AppPreferencesView extends StackedView<AppPreferencesViewModel> {
  const AppPreferencesView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AppPreferencesViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: const Center(child: Text("AppPreferencesView")),
      ),
    );
  }

  @override
  AppPreferencesViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AppPreferencesViewModel();
}
