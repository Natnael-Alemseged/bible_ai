import 'package:bible_ai/core/constants/app_colors.dart'; // Ensure this is correctly defined
import 'package:bible_ai/core/constants/ui_helpers.dart'; // Ensure this is correctly defined
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/input_field.dart';
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          // Outer Column to stack elements vertically
          children: [
            // Header Section: Back button and title (fixed at top)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpaceMedium, // Assumed to be a SizedBox for spacing
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0, bottom: 32.0),
                    child: Row(
                      children: [
                        // You might want to make this GestureDetector or IconButton for navigation
                        InkWell(
                          // Using InkWell for tap feedback on back icon
                          onTap: () {
                            viewModel
                                .navigateBack(); // Assuming you have a navigateBack method in your ViewModel
                          },
                          child:
                              const Icon(Icons.arrow_back, color: Colors.black),
                        ),
                        horizontalSpaceSmall, // Assumed to be a SizedBox for spacing
                        const Text(
                          'Account Setting',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Scrollable Content Section: Input fields
            Expanded(
              // Allows the SingleChildScrollView to take available space
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                    horizontal:
                        16.0), // Apply padding to the scrollable content
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InputField(
                      controller: viewModel.nameController,
                      label: 'Name',
                      hintText: 'Your name',
                      keyboardType: TextInputType.text,
                    ),
                    verticalSpaceSmall, // Using verticalSpaceSmall for consistent spacing
                    InputField(
                      controller: viewModel.emailController,
                      label: 'Email',
                      hintText: 'Your email',
                      keyboardType: TextInputType.emailAddress,
                    ),
                    verticalSpaceSmall,
                    InputField(
                      stroke: true,
                      controller: viewModel.oldPasswordController,
                      label: 'Old Password',
                      hintText: 'type your old password',
                      isPassword: true,
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    verticalSpaceSmall,
                    InputField(
                      controller: viewModel.newPasswordController,
                      stroke: false,
                      label: 'New Password',
                      hintText: 'type your new password',
                      isPassword: true,
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    verticalSpaceMedium, // Add some extra space at the bottom of the scroll view
                  ],
                ),
              ),
            ),
            // Footer Section: Update Button (fixed at bottom)
            Padding(
              padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  bottom: 16.0), // Padding for the button
              child: AppButton(
                text: 'Update',
                onPressed: viewModel.updateProfile,
                color: const Color(0xFFF4F4F4), // Light grey button color
                textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  AccountSettingsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AccountSettingsViewModel();
}
