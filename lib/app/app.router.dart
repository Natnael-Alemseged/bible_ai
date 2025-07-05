// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:bible_ai/ui/views/auth/forgot_password/forgot_password_view.dart'
    as _i14;
import 'package:bible_ai/ui/views/auth/login/login_view.dart' as _i11;
import 'package:bible_ai/ui/views/auth/otp/otp_view.dart' as _i15;
import 'package:bible_ai/ui/views/auth/signup/signup_view.dart' as _i13;
import 'package:bible_ai/ui/views/bible/bible_chapter_selection/bible_chapter_selection_view.dart'
    as _i22;
import 'package:bible_ai/ui/views/bible/bible_reading/bible_reading_view.dart'
    as _i23;
import 'package:bible_ai/ui/views/bible/bible_view.dart' as _i21;
import 'package:bible_ai/ui/views/bible/verse_selection/verse_selection_view.dart'
    as _i24;
import 'package:bible_ai/ui/views/chat/chat_view.dart' as _i19;
import 'package:bible_ai/ui/views/congratulations/congratulations_view.dart'
    as _i16;
import 'package:bible_ai/ui/views/enable_notification/enable_notification_view.dart'
    as _i17;
import 'package:bible_ai/ui/views/home/home_view.dart' as _i9;
import 'package:bible_ai/ui/views/main_screen/main_screen_view.dart' as _i18;
import 'package:bible_ai/ui/views/onboarding/onboarding_view.dart' as _i12;
import 'package:bible_ai/ui/views/profile/profile_view.dart' as _i20;
import 'package:bible_ai/ui/views/profile_management/about_the_app/about_the_app_view.dart'
    as _i6;
import 'package:bible_ai/ui/views/profile_management/account_settings/account_settings_view.dart'
    as _i2;
import 'package:bible_ai/ui/views/profile_management/app_preferences/app_preferences_view.dart'
    as _i3;
import 'package:bible_ai/ui/views/profile_management/bible_version_profile/bible_version_profile_view.dart'
    as _i7;
import 'package:bible_ai/ui/views/profile_management/help_and_support/help_and_support_view.dart'
    as _i5;
import 'package:bible_ai/ui/views/profile_management/notifications/notifications_view.dart'
    as _i8;
import 'package:bible_ai/ui/views/profile_management/subscription_and_payments/subscription_and_payments_view.dart'
    as _i4;
import 'package:bible_ai/ui/views/startup/startup_view.dart' as _i10;
import 'package:flutter/material.dart' as _i25;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i26;

class Routes {
  static const accountSettingsView = '/account-settings-view';

  static const appPreferencesView = '/app-preferences-view';

  static const subscriptionAndPaymentsView = '/subscription-and-payments-view';

  static const helpAndSupportView = '/help-and-support-view';

  static const aboutTheAppView = '/about-the-app-view';

  static const bibleVersionProfileView = '/bible-version-profile-view';

  static const notificationsView = '/notifications-view';

  static const homeView = '/home-view';

  static const startupView = '/startup-view';

  static const loginView = '/login-view';

  static const onboardingView = '/onboarding-view';

  static const signupView = '/signup-view';

  static const forgotPasswordView = '/forgot-password-view';

  static const otpView = '/otp-view';

  static const congratulationsView = '/congratulations-view';

  static const enableNotificationView = '/enable-notification-view';

  static const mainScreenView = '/main-screen-view';

  static const chatView = '/chat-view';

  static const profileView = '/profile-view';

  static const bibleVersionSelectionView = '/bible-version-selection-view';

  static const bookChaptersView = '/book-chapters-view';

  static const bibleReadingView = '/bible-reading-view';

  static const verseSelectionView = '/verse-selection-view';

  static const all = <String>{
    accountSettingsView,
    appPreferencesView,
    subscriptionAndPaymentsView,
    helpAndSupportView,
    aboutTheAppView,
    bibleVersionProfileView,
    notificationsView,
    homeView,
    startupView,
    loginView,
    onboardingView,
    signupView,
    forgotPasswordView,
    otpView,
    congratulationsView,
    enableNotificationView,
    mainScreenView,
    chatView,
    profileView,
    bibleVersionSelectionView,
    bookChaptersView,
    bibleReadingView,
    verseSelectionView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.accountSettingsView,
      page: _i2.AccountSettingsView,
    ),
    _i1.RouteDef(
      Routes.appPreferencesView,
      page: _i3.AppPreferencesView,
    ),
    _i1.RouteDef(
      Routes.subscriptionAndPaymentsView,
      page: _i4.SubscriptionAndPaymentsView,
    ),
    _i1.RouteDef(
      Routes.helpAndSupportView,
      page: _i5.HelpAndSupportView,
    ),
    _i1.RouteDef(
      Routes.aboutTheAppView,
      page: _i6.AboutTheAppView,
    ),
    _i1.RouteDef(
      Routes.bibleVersionProfileView,
      page: _i7.BibleVersionProfileView,
    ),
    _i1.RouteDef(
      Routes.notificationsView,
      page: _i8.NotificationsView,
    ),
    _i1.RouteDef(
      Routes.homeView,
      page: _i9.HomeView,
    ),
    _i1.RouteDef(
      Routes.startupView,
      page: _i10.StartupView,
    ),
    _i1.RouteDef(
      Routes.loginView,
      page: _i11.LoginView,
    ),
    _i1.RouteDef(
      Routes.onboardingView,
      page: _i12.OnboardingView,
    ),
    _i1.RouteDef(
      Routes.signupView,
      page: _i13.SignupView,
    ),
    _i1.RouteDef(
      Routes.forgotPasswordView,
      page: _i14.ForgotPasswordView,
    ),
    _i1.RouteDef(
      Routes.otpView,
      page: _i15.OtpView,
    ),
    _i1.RouteDef(
      Routes.congratulationsView,
      page: _i16.CongratulationsView,
    ),
    _i1.RouteDef(
      Routes.enableNotificationView,
      page: _i17.EnableNotificationView,
    ),
    _i1.RouteDef(
      Routes.mainScreenView,
      page: _i18.MainScreenView,
    ),
    _i1.RouteDef(
      Routes.chatView,
      page: _i19.ChatView,
    ),
    _i1.RouteDef(
      Routes.profileView,
      page: _i20.ProfileView,
    ),
    _i1.RouteDef(
      Routes.bibleVersionSelectionView,
      page: _i21.BibleVersionSelectionView,
    ),
    _i1.RouteDef(
      Routes.bookChaptersView,
      page: _i22.BookChaptersView,
    ),
    _i1.RouteDef(
      Routes.bibleReadingView,
      page: _i23.BibleReadingView,
    ),
    _i1.RouteDef(
      Routes.verseSelectionView,
      page: _i24.VerseSelectionView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.AccountSettingsView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.AccountSettingsView(),
        settings: data,
      );
    },
    _i3.AppPreferencesView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.AppPreferencesView(),
        settings: data,
      );
    },
    _i4.SubscriptionAndPaymentsView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.SubscriptionAndPaymentsView(),
        settings: data,
      );
    },
    _i5.HelpAndSupportView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.HelpAndSupportView(),
        settings: data,
      );
    },
    _i6.AboutTheAppView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.AboutTheAppView(),
        settings: data,
      );
    },
    _i7.BibleVersionProfileView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.BibleVersionProfileView(),
        settings: data,
      );
    },
    _i8.NotificationsView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.NotificationsView(),
        settings: data,
      );
    },
    _i9.HomeView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.HomeView(),
        settings: data,
      );
    },
    _i10.StartupView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i10.StartupView(),
        settings: data,
      );
    },
    _i11.LoginView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i11.LoginView(),
        settings: data,
      );
    },
    _i12.OnboardingView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i12.OnboardingView(),
        settings: data,
      );
    },
    _i13.SignupView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i13.SignupView(),
        settings: data,
      );
    },
    _i14.ForgotPasswordView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i14.ForgotPasswordView(),
        settings: data,
      );
    },
    _i15.OtpView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i15.OtpView(),
        settings: data,
      );
    },
    _i16.CongratulationsView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i16.CongratulationsView(),
        settings: data,
      );
    },
    _i17.EnableNotificationView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i17.EnableNotificationView(),
        settings: data,
      );
    },
    _i18.MainScreenView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i18.MainScreenView(),
        settings: data,
      );
    },
    _i19.ChatView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i19.ChatView(),
        settings: data,
      );
    },
    _i20.ProfileView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i20.ProfileView(),
        settings: data,
      );
    },
    _i21.BibleVersionSelectionView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i21.BibleVersionSelectionView(),
        settings: data,
      );
    },
    _i22.BookChaptersView: (data) {
      final args = data.getArgs<BookChaptersViewArguments>(nullOk: false);
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => _i22.BookChaptersView(
            key: args.key,
            version: args.version,
            book: args.book,
            totalChapters: args.totalChapters,
            onPreviousBook: args.onPreviousBook,
            onNextBook: args.onNextBook,
            onChapterTap: args.onChapterTap),
        settings: data,
      );
    },
    _i23.BibleReadingView: (data) {
      final args = data.getArgs<BibleReadingViewArguments>(nullOk: false);
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => _i23.BibleReadingView(
            key: args.key,
            version: args.version,
            book: args.book,
            chapter: args.chapter,
            title: args.title),
        settings: data,
      );
    },
    _i24.VerseSelectionView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i24.VerseSelectionView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class BookChaptersViewArguments {
  const BookChaptersViewArguments({
    this.key,
    required this.version,
    required this.book,
    required this.totalChapters,
    required this.onPreviousBook,
    required this.onNextBook,
    required this.onChapterTap,
  });

  final _i25.Key? key;

  final String version;

  final String book;

  final int totalChapters;

  final void Function() onPreviousBook;

  final void Function() onNextBook;

  final void Function(int) onChapterTap;

  @override
  String toString() {
    return '{"key": "$key", "version": "$version", "book": "$book", "totalChapters": "$totalChapters", "onPreviousBook": "$onPreviousBook", "onNextBook": "$onNextBook", "onChapterTap": "$onChapterTap"}';
  }

  @override
  bool operator ==(covariant BookChaptersViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.version == version &&
        other.book == book &&
        other.totalChapters == totalChapters &&
        other.onPreviousBook == onPreviousBook &&
        other.onNextBook == onNextBook &&
        other.onChapterTap == onChapterTap;
  }

  @override
  int get hashCode {
    return key.hashCode ^
        version.hashCode ^
        book.hashCode ^
        totalChapters.hashCode ^
        onPreviousBook.hashCode ^
        onNextBook.hashCode ^
        onChapterTap.hashCode;
  }
}

class BibleReadingViewArguments {
  const BibleReadingViewArguments({
    this.key,
    required this.version,
    required this.book,
    required this.chapter,
    required this.title,
  });

  final _i25.Key? key;

  final String version;

  final String book;

  final int chapter;

  final String title;

  @override
  String toString() {
    return '{"key": "$key", "version": "$version", "book": "$book", "chapter": "$chapter", "title": "$title"}';
  }

  @override
  bool operator ==(covariant BibleReadingViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.version == version &&
        other.book == book &&
        other.chapter == chapter &&
        other.title == title;
  }

  @override
  int get hashCode {
    return key.hashCode ^
        version.hashCode ^
        book.hashCode ^
        chapter.hashCode ^
        title.hashCode;
  }
}

extension NavigatorStateExtension on _i26.NavigationService {
  Future<dynamic> navigateToAccountSettingsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.accountSettingsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAppPreferencesView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.appPreferencesView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSubscriptionAndPaymentsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.subscriptionAndPaymentsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToHelpAndSupportView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.helpAndSupportView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAboutTheAppView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.aboutTheAppView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToBibleVersionProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.bibleVersionProfileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToNotificationsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.notificationsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToOnboardingView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.onboardingView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSignupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.signupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToForgotPasswordView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.forgotPasswordView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToOtpView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.otpView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCongratulationsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.congratulationsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToEnableNotificationView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.enableNotificationView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToMainScreenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.mainScreenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToChatView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.chatView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.profileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToBibleVersionSelectionView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.bibleVersionSelectionView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToBookChaptersView({
    _i25.Key? key,
    required String version,
    required String book,
    required int totalChapters,
    required void Function() onPreviousBook,
    required void Function() onNextBook,
    required void Function(int) onChapterTap,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.bookChaptersView,
        arguments: BookChaptersViewArguments(
            key: key,
            version: version,
            book: book,
            totalChapters: totalChapters,
            onPreviousBook: onPreviousBook,
            onNextBook: onNextBook,
            onChapterTap: onChapterTap),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToBibleReadingView({
    _i25.Key? key,
    required String version,
    required String book,
    required int chapter,
    required String title,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.bibleReadingView,
        arguments: BibleReadingViewArguments(
            key: key,
            version: version,
            book: book,
            chapter: chapter,
            title: title),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToVerseSelectionView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.verseSelectionView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAccountSettingsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.accountSettingsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAppPreferencesView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.appPreferencesView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSubscriptionAndPaymentsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.subscriptionAndPaymentsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHelpAndSupportView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.helpAndSupportView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAboutTheAppView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.aboutTheAppView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithBibleVersionProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.bibleVersionProfileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithNotificationsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.notificationsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithOnboardingView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.onboardingView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSignupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.signupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithForgotPasswordView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.forgotPasswordView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithOtpView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.otpView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCongratulationsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.congratulationsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithEnableNotificationView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.enableNotificationView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithMainScreenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.mainScreenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithChatView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.chatView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.profileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithBibleVersionSelectionView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.bibleVersionSelectionView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithBookChaptersView({
    _i25.Key? key,
    required String version,
    required String book,
    required int totalChapters,
    required void Function() onPreviousBook,
    required void Function() onNextBook,
    required void Function(int) onChapterTap,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.bookChaptersView,
        arguments: BookChaptersViewArguments(
            key: key,
            version: version,
            book: book,
            totalChapters: totalChapters,
            onPreviousBook: onPreviousBook,
            onNextBook: onNextBook,
            onChapterTap: onChapterTap),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithBibleReadingView({
    _i25.Key? key,
    required String version,
    required String book,
    required int chapter,
    required String title,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.bibleReadingView,
        arguments: BibleReadingViewArguments(
            key: key,
            version: version,
            book: book,
            chapter: chapter,
            title: title),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithVerseSelectionView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.verseSelectionView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
