import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'help_and_support_viewmodel.dart';

class HelpAndSupportView extends StackedView<HelpAndSupportViewModel> {
  const HelpAndSupportView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HelpAndSupportViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: const Center(child: Text("HelpAndSupportView")),
      ),
    );
  }

  @override
  HelpAndSupportViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HelpAndSupportViewModel();
}
