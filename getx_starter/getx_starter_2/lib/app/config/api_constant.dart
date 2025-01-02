class ApiConstant {
  // adb connect 10.81.11.135

  //API Calling URL
  ////SHISHIR LOCAL
  //static const String SERVER_IP_PORT = 'http://195.35.23.61:81'; // Live Url

  static const String SERVER_IP_PORT = 'http://10.81.11.165:8000'; // Bannah

  //static const String SERVER_IP_PORT = 'http://10.81.11.62:8000'; // Anik

  static const String BASE_URL = '$SERVER_IP_PORT/api/v1/';
  //Response Area.
  static const String FULL_RESPONSE = 'Full Response';
  static const String DATA_RESPONSE = 'data';
  //Response Key
  static const STATUS_CODE_KEY = 'status';
}
