import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'subscription_and_payments_viewmodel.dart';

class SubscriptionAndPaymentsView
    extends StackedView<SubscriptionAndPaymentsViewModel> {
  const SubscriptionAndPaymentsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SubscriptionAndPaymentsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: const Center(child: Text("SubscriptionAndPaymentsView")),
      ),
    );
  }

  @override
  SubscriptionAndPaymentsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SubscriptionAndPaymentsViewModel();
}
