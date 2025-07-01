import 'package:intl/intl.dart';

extension StringExtensions on String {
  bool get isValidEmail {
    final regex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    return regex.hasMatch(this);
  }

  String get capitalizeFirstLetter {
    if (isEmpty) return this;
    return '${this[0].toUpperCase()}${substring(1)}';
  }

  String get extractFileName {
    Uri uri = Uri.parse(this);
    return uri.pathSegments.last; // Get the last segment of the URL
  }

  bool get isNumeric => double.tryParse(this) != null;
}

extension DateTimeExtensions on DateTime {
  String toHumanReadable() {
    final dateFormatter = DateFormat(
      'yMMMd',
    ); // Adjust to your preferred format
    return dateFormatter.format(this);
  }
}

extension DurationConversion on num {
  /// Converts a numeric value formatted as M.SS (minutes.seconds) into a Duration.
  ///
  /// For example, 3.81 is interpreted as 3 minutes and 81 seconds, which is adjusted to 4 minutes and 21 seconds.
  Duration toDurationFromMinutesAndSeconds() {
    int minutes = this.floor();
    // Multiply the fractional part by 100 to get the seconds as an integer.
    int seconds = ((this - minutes) * 100).round();

    // Adjust if seconds are 60 or more.
    if (seconds >= 60) {
      minutes += seconds ~/ 60;
      seconds = seconds % 60;
    }
    return Duration(minutes: minutes, seconds: seconds);
  }
}
