import 'package:bible_ai/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../../core/widgets/app_button.dart';
import 'bible_version_profile_viewmodel.dart';

class BibleVersionProfileView
    extends StackedView<BibleVersionProfileViewModel> {
  const BibleVersionProfileView({Key? key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context,
      BibleVersionProfileViewModel viewModel,
      Widget? child,
      ) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 32.0),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.black),
                      onPressed: () => Navigator.pop(context),
                    ),
                    const Text(
                      'Bible Version',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    RadioListTile<String>(
                      title: const Text(
                        'King James Version (KJV)',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      value: 'KJV',
                      groupValue: viewModel.selectedVersion,
                      onChanged: (value) => viewModel.setSelectedVersion(value!),
                      activeColor: const Color(0xFFD19D00), // Yellow for selected
                      contentPadding: EdgeInsets.zero,
                    ),
                    RadioListTile<String>(
                      title: const Text(
                        'New King James Version (NKJV)',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      value: 'NKJV',
                      groupValue: viewModel.selectedVersion,
                      onChanged: (value) => viewModel.setSelectedVersion(value!),
                      activeColor: const Color(0xFFD19D00), // Yellow for selected
                      contentPadding: EdgeInsets.zero,
                    ),
                    RadioListTile<String>(
                      title: const Text(
                        'English Standard Version (ESV)',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      value: 'ESV',
                      groupValue: viewModel.selectedVersion,
                      onChanged: (value) => viewModel.setSelectedVersion(value!),
                      activeColor: const Color(0xFFD19D00), // Yellow for selected
                      contentPadding: EdgeInsets.zero,
                    ),
                    RadioListTile<String>(
                      title: const Text(
                        'New American Standard Bible (NASB)',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      value: 'NASB',
                      groupValue: viewModel.selectedVersion,
                      onChanged: (value) => viewModel.setSelectedVersion(value!),
                      activeColor: const Color(0xFFD19D00), // Yellow for selected
                      contentPadding: EdgeInsets.zero,
                    ),
                    RadioListTile<String>(
                      title: const Text(
                        'New International Version (NIV)',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      value: 'NIV',
                      groupValue: viewModel.selectedVersion,
                      onChanged: (value) => viewModel.setSelectedVersion(value!),
                      activeColor: const Color(0xFFD19D00), // Yellow for selected
                      contentPadding: EdgeInsets.zero,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: AppButton(
                  text: 'Update',
                  onPressed: viewModel.updateVersion,
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
      ),
    );
  }

  @override
  BibleVersionProfileViewModel viewModelBuilder(
      BuildContext context,
      ) =>
      BibleVersionProfileViewModel();
}