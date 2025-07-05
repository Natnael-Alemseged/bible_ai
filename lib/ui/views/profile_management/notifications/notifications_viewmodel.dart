import 'package:stacked/stacked.dart';

class NotificationsViewModel extends BaseViewModel {bool _dailyBibleVerseEnabled = false;
bool _aiChatRemindersEnabled = true; // Default to true as per screenshot
bool _announcementsUpdatesEnabled = false;

bool get dailyBibleVerseEnabled => _dailyBibleVerseEnabled;
bool get aiChatRemindersEnabled => _aiChatRemindersEnabled;
bool get announcementsUpdatesEnabled => _announcementsUpdatesEnabled;

void toggleDailyBibleVerse(bool value) {
  _dailyBibleVerseEnabled = value;
  notifyListeners();
}

void toggleAIChatReminders(bool value) {
  _aiChatRemindersEnabled = value;
  notifyListeners();
}

void toggleAnnouncementsUpdates(bool value) {
  _announcementsUpdatesEnabled = value;
  notifyListeners();
}

void updateNotifications() {
  // Simulate saving notification preferences
  print('Updating notifications: '
      'Daily Bible Verse: $dailyBibleVerseEnabled, '
      'AI Chat Reminders: $aiChatRemindersEnabled, '
      'Announcements & Updates: $announcementsUpdatesEnabled');
  // Add your API call or logic here
  notifyListeners();
}}
