import 'package:bible_ai/core/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../../gen/assets.gen.dart';
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpaceSmall,
              Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 32.0),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.black),
                      onPressed: () => Navigator.pop(context),
                    ),
                    const Text(
                      'App Preferences',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.person_outline, color: Colors.black),
                title: const Text(
                  'Notifications',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                onTap: viewModel.onNotifications,
              ),
              const SizedBox(height: 16.0),
              ListTile(
                leading:  Image.asset(Assets.mobile.path,width: 24,),
                title: const Text(
                  'Bible version',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                onTap: viewModel.onBibleVersion,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  AppPreferencesViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AppPreferencesViewModel();
}
