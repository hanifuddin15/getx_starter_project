import '../config/api_constant.dart';

extension StringExtensions on String {
  String capitalizeFirst() {
    if (isEmpty) return this;
    return this[0].toUpperCase() + substring(1);
  }

  String formateAsProfilePicture() {
    if (isEmpty) return this;
    return '${ApiConstant.SERVER_IP_PORT}/uploads/$this';
  }
}
