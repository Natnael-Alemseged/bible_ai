// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:bible_ai/ui/views/auth/forgot_password/forgot_password_view.dart'
    as _i7;
import 'package:bible_ai/ui/views/auth/login/login_view.dart' as _i4;
import 'package:bible_ai/ui/views/auth/otp/otp_view.dart' as _i8;
import 'package:bible_ai/ui/views/auth/signup/signup_view.dart' as _i6;
import 'package:bible_ai/ui/views/bible/bible_chapter_selection/bible_chapter_selection_view.dart'
    as _i15;
import 'package:bible_ai/ui/views/bible/bible_reading/bible_reading_view.dart'
    as _i16;
import 'package:bible_ai/ui/views/bible/bible_view.dart' as _i14;
import 'package:bible_ai/ui/views/bible/verse_selection/verse_selection_view.dart'
    as _i17;
import 'package:bible_ai/ui/views/chat/chat_view.dart' as _i12;
import 'package:bible_ai/ui/views/congratulations/congratulations_view.dart'
    as _i9;
import 'package:bible_ai/ui/views/enable_notification/enable_notification_view.dart'
    as _i10;
import 'package:bible_ai/ui/views/home/home_view.dart' as _i2;
import 'package:bible_ai/ui/views/main_screen/main_screen_view.dart' as _i11;
import 'package:bible_ai/ui/views/onboarding/onboarding_view.dart' as _i5;
import 'package:bible_ai/ui/views/profile/profile_view.dart' as _i13;
import 'package:bible_ai/ui/views/startup/startup_view.dart' as _i3;
import 'package:flutter/material.dart' as _i18;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i19;

class Routes {
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
      Routes.homeView,
      page: _i2.HomeView,
    ),
    _i1.RouteDef(
      Routes.startupView,
      page: _i3.StartupView,
    ),
    _i1.RouteDef(
      Routes.loginView,
      page: _i4.LoginView,
    ),
    _i1.RouteDef(
      Routes.onboardingView,
      page: _i5.OnboardingView,
    ),
    _i1.RouteDef(
      Routes.signupView,
      page: _i6.SignupView,
    ),
    _i1.RouteDef(
      Routes.forgotPasswordView,
      page: _i7.ForgotPasswordView,
    ),
    _i1.RouteDef(
      Routes.otpView,
      page: _i8.OtpView,
    ),
    _i1.RouteDef(
      Routes.congratulationsView,
      page: _i9.CongratulationsView,
    ),
    _i1.RouteDef(
      Routes.enableNotificationView,
      page: _i10.EnableNotificationView,
    ),
    _i1.RouteDef(
      Routes.mainScreenView,
      page: _i11.MainScreenView,
    ),
    _i1.RouteDef(
      Routes.chatView,
      page: _i12.ChatView,
    ),
    _i1.RouteDef(
      Routes.profileView,
      page: _i13.ProfileView,
    ),
    _i1.RouteDef(
      Routes.bibleVersionSelectionView,
      page: _i14.BibleVersionSelectionView,
    ),
    _i1.RouteDef(
      Routes.bookChaptersView,
      page: _i15.BookChaptersView,
    ),
    _i1.RouteDef(
      Routes.bibleReadingView,
      page: _i16.BibleReadingView,
    ),
    _i1.RouteDef(
      Routes.verseSelectionView,
      page: _i17.VerseSelectionView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.StartupView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.StartupView(),
        settings: data,
      );
    },
    _i4.LoginView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.LoginView(),
        settings: data,
      );
    },
    _i5.OnboardingView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.OnboardingView(),
        settings: data,
      );
    },
    _i6.SignupView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.SignupView(),
        settings: data,
      );
    },
    _i7.ForgotPasswordView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.ForgotPasswordView(),
        settings: data,
      );
    },
    _i8.OtpView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.OtpView(),
        settings: data,
      );
    },
    _i9.CongratulationsView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.CongratulationsView(),
        settings: data,
      );
    },
    _i10.EnableNotificationView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i10.EnableNotificationView(),
        settings: data,
      );
    },
    _i11.MainScreenView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i11.MainScreenView(),
        settings: data,
      );
    },
    _i12.ChatView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i12.ChatView(),
        settings: data,
      );
    },
    _i13.ProfileView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i13.ProfileView(),
        settings: data,
      );
    },
    _i14.BibleVersionSelectionView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i14.BibleVersionSelectionView(),
        settings: data,
      );
    },
    _i15.BookChaptersView: (data) {
      final args = data.getArgs<BookChaptersViewArguments>(nullOk: false);
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => _i15.BookChaptersView(
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
    _i16.BibleReadingView: (data) {
      final args = data.getArgs<BibleReadingViewArguments>(nullOk: false);
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => _i16.BibleReadingView(
            key: args.key,
            version: args.version,
            book: args.book,
            chapter: args.chapter,
            title: args.title),
        settings: data,
      );
    },
    _i17.VerseSelectionView: (data) {
      return _i18.MaterialPageRoute<dynamic>(
        builder: (context) => const _i17.VerseSelectionView(),
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

  final _i18.Key? key;

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

  final _i18.Key? key;

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

extension NavigatorStateExtension on _i19.NavigationService {
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
    _i18.Key? key,
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
    _i18.Key? key,
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
    _i18.Key? key,
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
    _i18.Key? key,
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
