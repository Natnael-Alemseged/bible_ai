import 'package:bible_ai/core/constants/app_colors.dart'; // Assuming you have this file
import 'package:bible_ai/core/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../gen/assets.gen.dart';
import 'profile_viewmodel.dart';

class ProfileView extends StackedView<ProfileViewModel> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ProfileViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpaceLarge,
              const Center(
                child: Text(
                  'Settings',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: blackColor,
                  ),
                ),
              ),
              verticalSpaceLarge,
              Container(
                padding: const EdgeInsets.all(16.0),
                margin: const EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  // Corrected color definition: Color(0xAARRGGBB)
                  color: const Color(0xFFFFF9E8),
                  // Assuming F9E8 was meant to be FFF9E8 with full opacity
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.orange,
                      child: Image.asset(Assets.profile.path),
                    ),
                    const SizedBox(width: 16),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'John Doe',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: blackColor,
                          ),
                        ),
                        Text(
                          'Johndoe321@gmail.com',
                          style: TextStyle(
                            fontSize: 14,
                            color: darkGreyColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              verticalSpaceMedium,
              Column(
                spacing: 8,
                children: [
                  ListTile(
                    leading:
                        const Icon(Icons.person_outline, color: blackColor),
                    title: const Text('Account Settings'),
                    onTap: viewModel.onAccountSettings,
                  ),
                  ListTile(
                    leading: Image.asset(Assets.mobile.path, width: 24),
                    title: const Text('App Preferences'),
                    onTap: viewModel.onAppPreferences,
                  ),
                  ListTile(
                    leading: Image.asset(Assets.creditCard.path, width: 24),
                    title: const Text('Subscription & Payments'),
                    onTap: viewModel.onSubscriptionPayments,
                  ),
                  ListTile(
                    leading: const Icon(Icons.help_outline, color: blackColor),
                    title: const Text('Help & Support'),
                    onTap: viewModel.onHelpSupport,
                  ),
                  ListTile(
                    leading: const Icon(Icons.star_outline, color: blackColor),
                    title: const Text('About the App'),
                    onTap: viewModel.onAboutApp,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  ProfileViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProfileViewModel();
}
