import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'about_the_app_viewmodel.dart';

class AboutTheAppView extends StackedView<AboutTheAppViewModel> {
  const AboutTheAppView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AboutTheAppViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: const Center(child: Text("AboutTheAppView")),
      ),
    );
  }

  @override
  AboutTheAppViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AboutTheAppViewModel();
}
