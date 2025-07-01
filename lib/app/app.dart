import 'package:bible_ai/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:bible_ai/ui/dialogs/info_alert/info_alert_dialog.dart';

import 'package:bible_ai/ui/views/home/home_view.dart';
import 'package:bible_ai/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:bible_ai/services/user_service.dart';
import 'package:bible_ai/ui/views/auth/login/login_view.dart';
import 'package:bible_ai/ui/views/auth/forgot_password/forgot_password_view.dart';

import 'package:bible_ai/ui/views/auth/signup/signup_view.dart';
import 'package:bible_ai/ui/views/onboarding/onboarding_view.dart';
// @stacked-import

@StackedApp(
  routes: [
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
    // @stacked-dialog
  ],
)
class App {}
