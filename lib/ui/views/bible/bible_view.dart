import 'package:bible_ai/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'bible_viewmodel.dart';

class BibleVersionSelectionView
    extends StackedView<BibleVersionSelectionViewModel> {
  const BibleVersionSelectionView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    BibleVersionSelectionViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select Bible Version',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: blackColor),
              ),
              const SizedBox(height: 16),
              Text(
                'Choose your preferred Bible translation',
                style: TextStyle(fontSize: 16, color: darkGreyColor),
              ),
              const SizedBox(height: 24),
              Expanded(
                child: ListView(
                  children: [
                    _buildVersionCard(
                        context,
                        viewModel,
                        'King James Version (KJV)',
                        'assets/kjv_icon.png',
                        'Revised for its majestic language and historical significance; a literal translation that has shaped English literature for centuries.'),
                    _buildVersionCard(
                        context,
                        viewModel,
                        'New King James Version (NKJV)',
                        'assets/nkjv_icon.png',
                        'An update of the KJV that retains traditional style while offering modern readability and clarity.'),
                    _buildVersionCard(
                        context,
                        viewModel,
                        'English Standard Version (ESV)',
                        'assets/esv_icon.png',
                        'Aiming for word-for-word accuracy, the ESV balances literary excellence with scholarly precision.'),
                    _buildVersionCard(
                        context,
                        viewModel,
                        'New American Standard Bible (NASB)',
                        'assets/nasb_icon.png',
                        'Known for its strict adherence to the original texts, providing one of the most literal translations available.'),
                    _buildVersionCard(
                        context,
                        viewModel,
                        'New International Version (NIV)',
                        'assets/niv_icon.png',
                        'Prioritizes clarity and readability by translating biblical texts into contemporary language while preserving meaning.'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildVersionCard(
      BuildContext context,
      BibleVersionSelectionViewModel viewModel,
      String title,
      String iconPath,
      String description) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: ListTile(
        leading: Image.asset(iconPath, width: 40, height: 40),
        title: Text(title,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: blackColor)),
        subtitle: Text(description,
            style: TextStyle(fontSize: 14, color: darkGreyColor)),
        onTap: () => viewModel.selectVersion(title),
      ),
    );
  }

  @override
  BibleVersionSelectionViewModel viewModelBuilder(BuildContext context) =>
      BibleVersionSelectionViewModel();
}
