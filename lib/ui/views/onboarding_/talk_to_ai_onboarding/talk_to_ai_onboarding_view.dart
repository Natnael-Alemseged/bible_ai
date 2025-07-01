import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'talk_to_ai_onboarding_viewmodel.dart';

class TalkToAiOnboardingView extends StackedView<TalkToAiOnboardingViewModel> {
  const TalkToAiOnboardingView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    TalkToAiOnboardingViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: const Center(child: Text("TalkToAiOnboardingView")),
      ),
    );
  }

  @override
  TalkToAiOnboardingViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TalkToAiOnboardingViewModel();
}
