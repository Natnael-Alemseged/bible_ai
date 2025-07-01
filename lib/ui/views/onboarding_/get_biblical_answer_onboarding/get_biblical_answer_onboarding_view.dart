import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'get_biblical_answer_onboarding_viewmodel.dart';

class GetBiblicalAnswerOnboardingView
    extends StackedView<GetBiblicalAnswerOnboardingViewModel> {
  const GetBiblicalAnswerOnboardingView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    GetBiblicalAnswerOnboardingViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: const Center(child: Text("GetBiblicalAnswerOnboardingView")),
      ),
    );
  }

  @override
  GetBiblicalAnswerOnboardingViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      GetBiblicalAnswerOnboardingViewModel();
}
