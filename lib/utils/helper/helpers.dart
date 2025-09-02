import 'package:intl/intl.dart';

class AHelper {
  static String formattedPrice(int price) {
    // using #,### format which tells to add the , after every 3 digits
    return NumberFormat("#,###", "en_US").format(price);
  }
}
