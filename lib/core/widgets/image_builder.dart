import 'dart:io';
import 'package:bible_ai/core/constants/app_colors.dart';
import 'package:bible_ai/core/constants/ui_helpers.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

const String defaultPicPath = 'assets/placeholder.png';

class ImageBuilder extends StatelessWidget {
  const ImageBuilder({
    super.key,
    this.image,
    this.fit = BoxFit.cover,
    required this.height,
    this.width,
    this.circle = false,
    this.blured = false,
    this.file = false,
    this.addBorder = false,
    this.roundness,
  });

  final bool addBorder;
  final bool blured;
  final bool circle;
  final bool file;
  final BoxFit fit;
  final double height;
  final String? image;
  final double? width;
  final double? roundness;

  bool _isUrl(String? string) {
    if (string == null || string.isEmpty) return false;
    final RegExp urlExp = RegExp(
      r'^(https?:\/\/|ftp:\/\/|www\.)[a-zA-Z0-9.-]+(\.[a-zA-Z]{2,})(:[0-9]{1,5})?(\/\S*)?$',
    );
    return urlExp.hasMatch(string);
  }

  @override
  Widget build(BuildContext context) {
    // Determine the correct image source
    ImageProvider imageProvider;
    if (file && image != null && File(image!).existsSync()) {
      imageProvider = FileImage(File(image!));
    } else if (_isUrl(image)) {
      imageProvider = CachedNetworkImageProvider(image!);
    } else {
      imageProvider = const AssetImage(defaultPicPath);
    }

    return Container(
      height: height,
      width: width ?? height,
      decoration: BoxDecoration(
        shape: circle ? BoxShape.circle : BoxShape.rectangle,
        borderRadius: circle ? null : BorderRadius.circular(roundness ?? 8),
        border: addBorder ? Border.all(color: Colors.grey) : null,
        image: DecorationImage(image: imageProvider, fit: fit),
      ),
      child: _isUrl(image)
          ? CachedNetworkImage(
              imageUrl: image!,
              height: height,
              width: width,
              fit: fit,
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  shape: circle ? BoxShape.circle : BoxShape.rectangle,
                  borderRadius: circle ? null : BorderRadius.circular(10),
                  image: DecorationImage(image: imageProvider, fit: fit),
                ),
              ),
              placeholder: (context, url) => Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: circle ? BoxShape.circle : BoxShape.rectangle,
                      borderRadius: circle ? null : BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage(defaultPicPath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: mediumGrey.withOpacity(.75),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: const CircularProgressIndicator(
                      color: whiteColor,
                    ),
                  ),
                ],
              ),
              errorWidget: (context, url, error) {
                debugPrint("Failed to load image: $url\nError: $error");
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage(defaultPicPath),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            )
          : null,
    );
  }
}
