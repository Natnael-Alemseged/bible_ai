import 'package:bible_ai/core/constants/app_text_style.dart';
import 'package:bible_ai/core/constants/app_colors.dart';
import 'package:bible_ai/core/constants/ui_helpers.dart';
import 'package:bible_ai/ui/views/profile_management/notifications/notifications_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../../core/widgets/app_button.dart';


class NotificationsView extends StackedView<NotificationsViewModel> {
  const NotificationsView({Key? key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context,
      NotificationsViewModel viewModel,
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
                      'Notifications',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SwitchListTile(
                title: const Text(
                  'Daily Bible Verse',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                value: viewModel.dailyBibleVerseEnabled,
                onChanged: (value) => viewModel.toggleDailyBibleVerse(value),
                activeColor: const Color(0xFFD19D00), // Yellow for active switch
                contentPadding: EdgeInsets.zero,
              ),
              const SizedBox(height: 16.0),
              SwitchListTile(
                title: const Text(
                  'AI Chat Reminders',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                value: viewModel.aiChatRemindersEnabled,
                onChanged: (value) => viewModel.toggleAIChatReminders(value),
                activeColor: const Color(0xFFD19D00), // Yellow for active switch
                contentPadding: EdgeInsets.zero,
              ),
              const SizedBox(height: 16.0),
              SwitchListTile(
                title: const Text(
                  'Announcements & Updates',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                value: viewModel.announcementsUpdatesEnabled,
                onChanged: (value) => viewModel.toggleAnnouncementsUpdates(value),
                activeColor: const Color(0xFFD19D00), // Yellow for active switch
                contentPadding: EdgeInsets.zero,
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: AppButton(
                  text: 'Update',
                  onPressed: viewModel.updateNotifications,
                  color: const Color(0xFFF4F4F4),
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
  NotificationsViewModel viewModelBuilder(BuildContext context) =>
      NotificationsViewModel();
}