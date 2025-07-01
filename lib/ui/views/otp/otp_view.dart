import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'otp_viewmodel.dart';

class OtpView extends StackedView<OtpViewModel> {
  const OtpView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    OtpViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: const Center(child: Text("OtpView")),
      ),
    );
  }

  @override
  OtpViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      OtpViewModel();
}
