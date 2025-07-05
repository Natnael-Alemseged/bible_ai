import 'package:flutter/material.dart';

// Color constants

const Color primaryColor = Color(0xFFFFBF00);
const Color tabColor = Color(0xFFD19D00);
const Color borderColor = Color(0xFF453300);
const Color secondary = Color(0xFF212121); // Dark
const Color accent = Color(0xFF757575); // Grey
const Color primaryColorLight = Color(0xFFFFFAEC);
const Color softYellow = Color(0xFFFFF5DC); // Soft light yellow background
const Color lightAmber = Color(0xFFFFE08C); // Slightly pale amber
const Color fadedPrimary = Color(0xFFFFE6B3); // Faded version of primary

// const Color orangeButtonColor = Color(0xFFFFA64D); // Light orange (button color)
// const Color yellowishButtonColor = Color(
//   0xFFF8B621,
// ); // Light orange (button color)
// const Color disabledButtonColor = Color(0xFF9E7A56);
const Color orangeButtonColor = Color(0xFFF28740);
const Color redColor = Color(0xFFE83E38);
const Color darkPurple = Color.fromARGB(
  255,
  33,
  15,
  50,
); // Dark purple background
const Color primaryColorDark = Color(0xFF300151);
const Color darkGreyColor =
    Color(0xFF121212); // Very dark grey (general background)
const Color textGreyColor =
    Color(0xFFA6A6A6); // Very dark grey (general background)
const Color mediumGrey = Color(0xFF232323); // Medium grey for cards
const Color lightGrey = Color(0xFF707070); // Light grey for text
const Color veryLightGrey = Color(0xFFD9D9D9); // For borders or inactive states

// Neutral colors
const Color whiteColor = Colors.white;
const Color greyColor = Colors.grey;

const Color blackColor = Colors.black;

// Special colors
const Color dangerColor = Colors.red;
const Color greenColor = Colors.green;
const Color amberColor = Colors.amber;

// Background gradient
LinearGradient bgdGradiant = const LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [darkPurple, darkGreyColor],
);

// Button gradient
LinearGradient buttonGradiant({
  AlignmentGeometry? begin,
  AlignmentGeometry? end,
}) =>
    LinearGradient(
      begin: begin ?? Alignment.centerLeft,
      end: end ?? Alignment.centerRight,
      colors: const [
        Color(0xFFFFA64D), // Orange gradient start
        Color(0xFFFF6DA5), // Pink gradient end
      ],
    );
