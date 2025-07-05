import 'package:bible_ai/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:bible_ai/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:bible_ai/ui/views/congratulations/congratulations_view.dart';

import 'package:bible_ai/ui/views/home/home_view.dart';
import 'package:bible_ai/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:bible_ai/services/user_service.dart';
import 'package:bible_ai/ui/views/auth/login/login_view.dart';
import 'package:bible_ai/ui/views/auth/forgot_password/forgot_password_view.dart';

import 'package:bible_ai/ui/views/auth/signup/signup_view.dart';
import 'package:bible_ai/ui/views/onboarding/onboarding_view.dart';
import 'package:bible_ai/ui/views/auth/otp/otp_view.dart';

import 'package:bible_ai/ui/views/enable_notification/enable_notification_view.dart';
import 'package:bible_ai/ui/views/main_screen/main_screen_view.dart';
import 'package:bible_ai/ui/views/chat/chat_view.dart';
import 'package:bible_ai/ui/views/bible/bible_view.dart';
import 'package:bible_ai/ui/views/profile/profile_view.dart';
import 'package:bible_ai/ui/views/profile_management/account_settings/account_settings_view.dart';
import 'package:bible_ai/ui/views/profile_management/app_preferences/app_preferences_view.dart';
import 'package:bible_ai/ui/views/profile_management/subscription_and_payments/subscription_and_payments_view.dart';
import 'package:bible_ai/ui/views/profile_management/help_and_support/help_and_support_view.dart';
import 'package:bible_ai/ui/views/profile_management/about_the_app/about_the_app_view.dart';
import 'package:bible_ai/ui/views/bible/bible_chapter_selection/bible_chapter_selection_view.dart';
import 'package:bible_ai/ui/views/bible/bible_reading/bible_reading_view.dart';
import 'package:bible_ai/ui/views/bible/verse_selection/verse_selection_view.dart';
import 'package:bible_ai/ui/dialogs/welcome_premium/welcome_premium_dialog.dart';

import 'package:bible_ai/ui/views/profile_management/bible_version_profile/bible_version_profile_view.dart';
import 'package:bible_ai/ui/views/profile_management/notifications/notifications_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: AccountSettingsView),
    MaterialRoute(page: AppPreferencesView),
    MaterialRoute(page: SubscriptionAndPaymentsView),
    MaterialRoute(page: HelpAndSupportView),
    MaterialRoute(page: AboutTheAppView),

    MaterialRoute(page: BibleVersionProfileView),
    MaterialRoute(page: NotificationsView),
// @stacked-route`
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    // MaterialRoute(page: WelcomeOnboarding),
    // MaterialRoute(page: AskAnythingOnboarding),
    // MaterialRoute(page: TalkToAiOnboardingView),
    // MaterialRoute(page: GetBiblicalAnswerOnboardingView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: OnboardingView),
    MaterialRoute(page: SignupView),
    MaterialRoute(page: ForgotPasswordView),
    MaterialRoute(page: OtpView),
    MaterialRoute(page: CongratulationsView),
    MaterialRoute(page: EnableNotificationView),
    MaterialRoute(page: MainScreenView),
    MaterialRoute(page: ChatView),
    MaterialRoute(page: ProfileView),
    MaterialRoute(page: BibleVersionSelectionView),
    MaterialRoute(page: BookChaptersView),
    MaterialRoute(page: BibleReadingView),
    MaterialRoute(page: VerseSelectionView),
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // LazySingleton(classType: UserService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    StackedDialog(classType: WelcomePremiumDialog),
// @stacked-dialog
  ],
)
class App {}
