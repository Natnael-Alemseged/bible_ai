/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class Assets {
  const Assets._();

  static const AssetGenImage billyGraham =
      AssetGenImage('assets/Billy Graham.png');
  static const AssetGenImage cSLewis = AssetGenImage('assets/C.S Lewis.png');
  static const AssetGenImage david = AssetGenImage('assets/David.png');
  static const AssetGenImage johnPiper = AssetGenImage('assets/John Piper.png');
  static const AssetGenImage jordanPeterson =
      AssetGenImage('assets/Jordan Peterson.png');
  static const AssetGenImage mary = AssetGenImage('assets/Mary.png');
  static const AssetGenImage moses = AssetGenImage('assets/Moses.png');
  static const AssetGenImage paul = AssetGenImage('assets/Paul.png');
  static const AssetGenImage abraham = AssetGenImage('assets/abraham.png');
  static const AssetGenImage apple = AssetGenImage('assets/apple.png');
  static const AssetGenImage bible = AssetGenImage('assets/bible.png');
  static const AssetGenImage bibleMinimal =
      AssetGenImage('assets/bible_minimal.png');
  static const AssetGenImage bibleRipple =
      AssetGenImage('assets/bible_ripple.png');
  static const AssetGenImage bibleWhite =
      AssetGenImage('assets/bible_white.png');
  static const AssetGenImage congratulations =
      AssetGenImage('assets/congratulations.png');
  static const AssetGenImage google = AssetGenImage('assets/google.png');
  static const AssetGenImage notification =
      AssetGenImage('assets/notification.png');
  static const AssetGenImage paywallBackground =
      AssetGenImage('assets/paywall_background.png');
  static const AssetGenImage profile = AssetGenImage('assets/profile.png');
  static const AssetGenImage welcome = AssetGenImage('assets/welcome.png');

  /// List of all assets
  static List<AssetGenImage> get values => [
        billyGraham,
        cSLewis,
        david,
        johnPiper,
        jordanPeterson,
        mary,
        moses,
        paul,
        abraham,
        apple,
        bible,
        bibleMinimal,
        bibleRipple,
        bibleWhite,
        congratulations,
        google,
        notification,
        paywallBackground,
        profile,
        welcome
      ];
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
