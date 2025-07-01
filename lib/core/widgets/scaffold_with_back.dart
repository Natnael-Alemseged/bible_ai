import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_text_style.dart';

Widget ScaffoldWithBack({
  required BuildContext context,
  required Widget body,
  Color? backgroundColor, // Optional background color parameter
  String title = '',
  Widget? appBarSuffix,
  VoidCallback? leadingLogic,
  bool isLoading = false, // Optional suffix widget for the AppBar
}) {
  final Color effectiveBackgroundColor = backgroundColor ?? primaryColor;
  return Scaffold(
    appBar: AppBar(
      title: Text(title, style: AppTextStyle.h2Bold),
      centerTitle: true,
      backgroundColor: primaryColor,
      leading: IconButton(
        onPressed: leadingLogic ??
            () {
              isLoading ? null : Navigator.of(context).pop();
            },
        icon: const Icon(Icons.arrow_back_ios, color: whiteColor),
      ),
      actions: [
        // Conditionally add the appBarSuffix if it's not null
        if (appBarSuffix != null) appBarSuffix,
      ],
    ),
    backgroundColor: effectiveBackgroundColor,
    body: body,
  );
}

// import 'package:africkiko/core/constants/app_text_style.dart';
// import 'package:flutter/material.dart';

// import '../constants/app_colors.dart';

// Widget ScaffoldWithBack({
//   required BuildContext context,
//   required Widget body,
//   Color? backgroundColor, // Optional background color parameter

//   String title = '',
//   Widget? appBarSuffix,
// }) {
//   final Color effectiveBackgroundColor = backgroundColor ?? primaryColor;
//   return Scaffold(
//     appBar: AppBar(
//       title: Text(title, style: AppTextStyle.h2Bold),
//       centerTitle: true,
//       backgroundColor: primaryColor,
//       leading: IconButton(
//         onPressed: () {
//           Navigator.of(context).pop();
//         },
//         icon: const Icon(Icons.arrow_back_ios, color: whiteColor),
//       ),
//       actions: [
//         // Ensure appBarSuffix is not null
//         if (appBarSuffix != null) appBarSuffix,
//       ],
//     ),
//     backgroundColor: effectiveBackgroundColor,
//     body: body,
//   );
// }
