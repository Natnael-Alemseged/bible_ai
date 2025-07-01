import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'account_settings_viewmodel.dart';

class AccountSettingsView extends StackedView<AccountSettingsViewModel> {
  const AccountSettingsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AccountSettingsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: const Center(child: Text("AccountSettingsView")),
      ),
    );
  }

  @override
  AccountSettingsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AccountSettingsViewModel();
}
