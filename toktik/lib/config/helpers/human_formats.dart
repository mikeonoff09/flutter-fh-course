// a class that formats numbers to human readable strings (e.g. 1000 -> 1k)
import 'package:intl/intl.dart';

class HumanFormats {
  static String formatNumber(int number) {
    //
    // My implementation with one decimal place
    // if (number < 1000) {
    //   return number.toString();
    // } else if (number < 1000000) {
    //   return '${(number / 1000).toStringAsFixed(1)}K';
    // } else if (number < 1000000000) {
    //   return '${(number / 1000000).toStringAsFixed(1)}M';
    // } else {
    //   return '${(number / 1000000000).toStringAsFixed(1)}B';
    // }

    // Instructor's implementation using intl package
    final format = NumberFormat.compactCurrency(
      decimalDigits: 1,
      symbol: '',
    );
    return format.format(number);
  }
}
