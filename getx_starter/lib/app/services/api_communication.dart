import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart' as dio;
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:getx_starter/app/utils/file.dart';
import 'package:getx_starter/app/utils/image.dart';
import 'package:getx_starter/app/utils/loader.dart';
import 'package:getx_starter/app/utils/snackbar.dart';
import 'package:image_picker/image_picker.dart';

import '../config/api_constant.dart';
import '../data/login_creadential.dart';
import '../models/api_response.dart';

class ApiCommunication {
  late dio.Dio _dio;
  final String baseUrl = ApiConstant.BASE_URL;
  late Map<String, dynamic> header, responseData;
  late Connectivity connectivity;
  late LoginCredential _loginCredential;
  late String? token;

  ApiCommunication({int? connectTimeout, int? receiveTimeout}) {
    _dio = Dio();
    _dio.options.connectTimeout =
        Duration(milliseconds: connectTimeout ?? 60000); //1000 = 1s
    _dio.options.receiveTimeout =
        Duration(milliseconds: receiveTimeout ?? 60000);

    connectivity = Connectivity();
    _loginCredential = LoginCredential();
    token = _loginCredential.getAccessToken();
    header = {
      'Accept': '*/*',
      HttpHeaders.contentTypeHeader: 'application/json',
      'Authorization': 'Bearer $token',
    };
  }

  Future<bool> isConnectedToInternet() async {
    List<ConnectivityResult> connectivityResult = await connectivity.checkConnectivity();
      
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      return true;
    } else {
      return false;
    }
  }

  Future<ApiResponse> doGetRequest({
    required String apiEndPoint,
    bool enableLoading = false,
    String? errorMessage,
    String responseDataKey = ApiConstant.DATA_RESPONSE,
  }) async {
    if (await isConnectedToInternet()) {
      if (enableLoading) showLoader();
      dio.Response? response;

      late String responseErrorMessage;
      String requestUrl = '$baseUrl$apiEndPoint';
      debugPrint(
          '--------------------------------------Get Request------------------------------------------------');
      debugPrint('Request Url: $requestUrl');
      try {
        response = await _dio.get(
          requestUrl,
          options: dio.Options(headers: header),
        );
        // Dismissing Loader
        if (enableLoading) dismissLoader();
      } on DioException catch (error) {
        // Dismissing Loader
        if (enableLoading) dismissLoader();
        // Retriving Response Error
        if (error.response?.statusCode == 401) {
          _loginCredential.clearLoginCredentialAndMoveToLogin();
        }
        try {
          Map<String, dynamic> messageMap =
              error.response?.data as Map<String, dynamic>;
          responseErrorMessage = messageMap['message'];
        } catch (error) {
          responseErrorMessage = 'Api Error';
        }
        // Showing Error Message
        // showErrorSnackkbar(message: responseErrorMessage);
        debugPrint('Error Message: $responseErrorMessage');
        //! Returning DioException Error Response
        return ApiResponse(isSuccessful: false, message: responseErrorMessage);
      } on SocketException catch (error) {
        if (enableLoading) dismissLoader();
        responseErrorMessage = error.message;
        // Showing Error Message
        // showErrorSnackkbar(message: responseErrorMessage);
        debugPrint('Error Message: $responseErrorMessage');
        //! Returning SocketException Error Response
        return ApiResponse(isSuccessful: false, message: responseErrorMessage);
      } catch (error) {
        // Dismissing Loader
        if (enableLoading) dismissLoader();
        responseErrorMessage = error.toString();
        // showErrorSnackkbar(message: responseErrorMessage);
        debugPrint('Error Message: $responseErrorMessage');
        //! Returning catch  Error Response of api calling
        return ApiResponse(
          isSuccessful: false,
          message: responseErrorMessage,
        );
      }
      if (response.statusCode == 200) {
        responseData = response.data; // Getting success Response data
        // Showing Success message
        debugPrint('Response Data: $responseData');
        return ApiResponse(
          isSuccessful: true,
          statusCode: responseData[ApiConstant.STATUS_CODE_KEY],
          data: responseDataKey != ApiConstant.FULL_RESPONSE
              ? responseData[responseDataKey]
              : responseData,
        );
      } else {
        // showErrorSnackkbar(message: '${response.statusCode}');
        debugPrint('${response.statusCode}');
        //! Returning Other Status Code Error Response
        return ApiResponse(
          isSuccessful: false,
          statusCode: response.statusCode,
        );
      }
    } else {
      errorMessage = 'You are not connected with mobile/wifi network';
      showWarningSnackkbar(message: errorMessage);
      debugPrint(errorMessage);
      //! Returning Network Not found Error Response
      return ApiResponse(
        isSuccessful: false,
        statusCode: 503,
        message: errorMessage,
      );
    }
  }

  Future<ApiResponse> doThirdParyGetRequest({
    required String requestUrl,
    bool enableLoading = false,
    String? errorMessage,
    String responseDataKey = ApiConstant.DATA_RESPONSE,
  }) async {
    if (await isConnectedToInternet()) {
      if (enableLoading) showLoader();
      dio.Response? response;

      late String responseErrorMessage;
      debugPrint(
          '--------------------------------------Get Request------------------------------------------------');
      debugPrint('Request Url: $requestUrl');
      try {
        response = await _dio.get(
          requestUrl,
          options: dio.Options(headers: header),
        );
        // Dismissing Loader
        if (enableLoading) dismissLoader();
      } on DioException catch (error) {
        // Dismissing Loader
        if (enableLoading) dismissLoader();
        // Retriving Response Error
        if (error.response?.statusCode == 401) {
          _loginCredential.clearLoginCredentialAndMoveToLogin();
        }
        try {
          Map<String, dynamic> messageMap =
              error.response?.data as Map<String, dynamic>;
          responseErrorMessage = messageMap['message'];
        } catch (error) {
          responseErrorMessage = 'Api Error';
        }
        // Showing Error Message
        // showErrorSnackkbar(message: responseErrorMessage);
        debugPrint('Error Message: $responseErrorMessage');
        //! Returning DioException Error Response
        return ApiResponse(isSuccessful: false, message: responseErrorMessage);
      } on SocketException catch (error) {
        if (enableLoading) dismissLoader();
        responseErrorMessage = error.message;
        // Showing Error Message
        // showErrorSnackkbar(message: responseErrorMessage);
        debugPrint('Error Message: $responseErrorMessage');
        //! Returning SocketException Error Response
        return ApiResponse(isSuccessful: false, message: responseErrorMessage);
      } catch (error) {
        // Dismissing Loader
        if (enableLoading) dismissLoader();
        responseErrorMessage = error.toString();
        // showErrorSnackkbar(message: responseErrorMessage);
        debugPrint('Error Message: $responseErrorMessage');
        //! Returning catch  Error Response of api calling
        return ApiResponse(
          isSuccessful: false,
          message: responseErrorMessage,
        );
      }
      if (response.statusCode == 200) {
        responseData = response.data; // Getting success Response data
        // Showing Success message
        debugPrint('Response Data: $responseData');
        return ApiResponse(
          isSuccessful: true,
          statusCode: responseData[ApiConstant.STATUS_CODE_KEY],
          data: responseDataKey != ApiConstant.FULL_RESPONSE
              ? responseData[responseDataKey]
              : responseData,
        );
      } else {
        // showErrorSnackkbar(message: '${response.statusCode}');
        debugPrint('${response.statusCode}');
        //! Returning Other Status Code Error Response
        return ApiResponse(
          isSuccessful: false,
          statusCode: response.statusCode,
        );
      }
    } else {
      errorMessage = 'You are not connected with mobile/wifi network';
      showWarningSnackkbar(message: errorMessage);
      debugPrint(errorMessage);
      //! Returning Network Not found Error Response
      return ApiResponse(
        isSuccessful: false,
        statusCode: 503,
        message: errorMessage,
      );
    }
  }

  Future<ApiResponse> doPostRequest({
    required String apiEndPoint,
    Map<String, dynamic>? requestData,
    List<XFile>? mediaXFiles,
    List<File>? mediaFiles,
    String? fileKey,
    String? errorMessage,
    bool enableLoading = false,
    bool isFormData = false,
    String responseDataKey = ApiConstant.DATA_RESPONSE,
  }) async {
    dio.Response? response;
    String requestUrl = '$baseUrl$apiEndPoint';
    late String responseErrorMessage;
    debugPrint(
        '--------------------------------------Post Request------------------------------------------------');
    debugPrint(
        'Request Url: $requestUrl\n\nIs Form Request: $isFormData \n\n Request Data: $requestData\n');

    if (await isConnectedToInternet()) {
      // Internet Connection is available
      if (enableLoading) showLoader();
      final Object? requestObject;
      if (isFormData) {
        // If request data is Form data
        FormData requestFormData =
            FormData.fromMap(requestData ?? <String, dynamic>{});
        if (mediaXFiles != null && mediaXFiles.isNotEmpty) {
          // Having XFile to attatch
          List multiparts = await getMultipartFilesFromXfiles(mediaXFiles);
          for (dio.MultipartFile singleMultipart in multiparts) {
            requestFormData.files
                .add(MapEntry(fileKey ?? 'files', singleMultipart));
          }
        }
        if (mediaFiles != null && mediaFiles.isNotEmpty) {
          // Having File to attatch
          for (File mediaFile in mediaFiles) {
            requestFormData.files.add(MapEntry(
                fileKey ?? 'files',
                dio.MultipartFile.fromFileSync(mediaFile.path,
                    contentType: getMediaTypeFromFile(mediaFile),
                    filename: getFileNameFromFile(mediaFile))));
          }
        }

        requestObject = requestFormData;
      } else {
        // If request data is Raw data

        requestObject = requestData;
      }
      try {
        response = await _dio.post(
          requestUrl,
          data: requestObject,
          options: dio.Options(headers: header),
        );

        if (enableLoading) dismissLoader();
      } on DioException catch (error) {
        if (enableLoading) dismissLoader();
        // Retriving Response Error
        if (error.response?.statusCode == 401) {
          _loginCredential.clearLoginCredentialAndMoveToLogin();
        }
        try {
          Map<String, dynamic> messageMap =
              error.response?.data as Map<String, dynamic>;
          responseErrorMessage = messageMap['message'];
        } catch (error) {
          responseErrorMessage = 'Api Error';
        }
        // showErrorSnackkbar(message: responseErrorMessage);
        debugPrint(responseErrorMessage);
        return ApiResponse(isSuccessful: false, message: responseErrorMessage);
      } on SocketException catch (error) {
        if (enableLoading) dismissLoader();
        responseErrorMessage = error.message;
        // showErrorSnackkbar(message: responseErrorMessage);
        debugPrint(errorMessage);
        return ApiResponse(isSuccessful: false, message: responseErrorMessage);
      } catch (error) {
        if (enableLoading) dismissLoader();
        responseErrorMessage = error.toString();
        // showErrorSnackkbar(message: responseErrorMessage);
        debugPrint(errorMessage);
        return ApiResponse(
          isSuccessful: false,
          message: responseErrorMessage,
        );
      }

      if (response.statusCode == 200) {
        Map<String, dynamic> responseData = response.data;
        debugPrint('$responseData');
        return ApiResponse(
          isSuccessful: true,
          statusCode: responseData[ApiConstant.STATUS_CODE_KEY],
          message: responseData['message'],
          data: responseDataKey != ApiConstant.FULL_RESPONSE
              ? responseData[responseDataKey]
              : responseData,
        );
      } else {
        // showErrorSnackkbar(message: '${response.statusCode}');
        debugPrint('${response.statusCode}');
        return ApiResponse(
          isSuccessful: false,
          statusCode: response.statusCode,
        );
      }
    } else {
      errorMessage = 'You are not connected with mobile/wifi network';
      showWarningSnackkbar(message: errorMessage);
      debugPrint(errorMessage);
      //! Returning Network Not found Error Response
      return ApiResponse(
        isSuccessful: false,
        statusCode: 503,
        message: errorMessage,
      );
    }
  }

  Future<ApiResponse> doPostFormRequest({
    required String apiEndPoint,
    Map<String, dynamic>? requestData,
    List<XFile>? mediaXFiles,
    List<String>? fileKeys,
    List<File>? mediaFiles,
    String? fileKey,
    String? errorMessage,
    bool enableLoading = false,
    bool isFormData = false,
    String responseDataKey = ApiConstant.DATA_RESPONSE,
  }) async {
    dio.Response? response;
    String requestUrl = '$baseUrl$apiEndPoint';
    late String responseErrorMessage;
    debugPrint(
        '--------------------------------------Post Request------------------------------------------------');
    debugPrint(
        'Request Url: $requestUrl\n\nIs Form Request: $isFormData \n\n Request Data: $requestData\n');

    if (await isConnectedToInternet()) {
      // Internet Connection is available
      if (enableLoading) showLoader();
      final Object? requestObject;
      if (isFormData) {
        // If request data is Form data
        FormData requestFormData =
            FormData.fromMap(requestData ?? <String, dynamic>{});
        if (mediaXFiles != null && mediaXFiles.isNotEmpty) {
          // Having XFile to attatch
          List multiparts = await getMultipartFilesFromXfiles(mediaXFiles);

          for (int i = 0; i < multiparts.length; i++) {
            requestFormData.files
                .add(MapEntry(fileKeys?[i] ?? 'files', multiparts[i]));
          }
        }
        if (mediaFiles != null && mediaFiles.isNotEmpty) {
          // Having File to attatch
          for (int i = 0; i < mediaFiles.length; i++) {
            requestFormData.files.add(MapEntry(
                fileKeys?[i] ?? 'files',
                dio.MultipartFile.fromFileSync(mediaFiles[i].path,
                    contentType: getMediaTypeFromFile(mediaFiles[i]),
                    filename: getFileNameFromFile(mediaFiles[i]))));
          }
        }

        requestObject = requestFormData;
      } else {
        // If request data is Raw data

        requestObject = requestData;
      }
      try {
        response = await _dio.post(
          requestUrl,
          data: requestObject,
          options: dio.Options(headers: header),
        );

        if (enableLoading) dismissLoader();
      } on DioException catch (error) {
        if (enableLoading) dismissLoader();
        // Retriving Response Error
        if (error.response?.statusCode == 401) {
          _loginCredential.clearLoginCredentialAndMoveToLogin();
        }
        try {
          Map<String, dynamic> messageMap =
              error.response?.data as Map<String, dynamic>;
          responseErrorMessage = messageMap['message'];
        } catch (error) {
          responseErrorMessage = 'Api Error';
        }
        // showErrorSnackkbar(message: responseErrorMessage);
        debugPrint(responseErrorMessage);
        return ApiResponse(isSuccessful: false, message: responseErrorMessage);
      } on SocketException catch (error) {
        if (enableLoading) dismissLoader();
        responseErrorMessage = error.message;
        // showErrorSnackkbar(message: responseErrorMessage);
        debugPrint(errorMessage);
        return ApiResponse(isSuccessful: false, message: responseErrorMessage);
      } catch (error) {
        if (enableLoading) dismissLoader();
        responseErrorMessage = error.toString();
        // showErrorSnackkbar(message: responseErrorMessage);
        debugPrint(errorMessage);
        return ApiResponse(
          isSuccessful: false,
          message: responseErrorMessage,
        );
      }

      if (response.statusCode == 200) {
        Map<String, dynamic> responseData = response.data;
        debugPrint('$responseData');
        return ApiResponse(
          isSuccessful: true,
          statusCode: responseData[ApiConstant.STATUS_CODE_KEY],
          message: responseData['message'],
          data: responseDataKey != ApiConstant.FULL_RESPONSE
              ? responseData[responseDataKey]
              : responseData,
        );
      } else {
        // showErrorSnackkbar(message: '${response.statusCode}');
        debugPrint('${response.statusCode}');
        return ApiResponse(
          isSuccessful: false,
          statusCode: response.statusCode,
        );
      }
    } else {
      errorMessage = 'You are not connected with mobile/wifi network';
      showWarningSnackkbar(message: errorMessage);
      debugPrint(errorMessage);
      //! Returning Network Not found Error Response
      return ApiResponse(
        isSuccessful: false,
        statusCode: 503,
        message: errorMessage,
      );
    }
  }

  Future<ApiResponse> doPatchRequest({
    required String apiEndPoint,
    Map<String, dynamic>? requestData,
    List<XFile>? mediaXFiles,
    List<File>? mediaFiles,
    String? fileKey,
    String? errorMessage,
    bool enableLoading = false,
    bool isFormData = false,
    String responseDataKey = ApiConstant.DATA_RESPONSE,
  }) async {
    dio.Response? response;
    String requestUrl = '$baseUrl$apiEndPoint';
    late String responseErrorMessage;
    debugPrint(
        '--------------------------------------Post Request------------------------------------------------');
    debugPrint(
        'Request Url: $requestUrl\n\nIs Form Request: $isFormData \n\n Request Data: $requestData\n');

    if (await isConnectedToInternet()) {
      // Internet Connection is available
      if (enableLoading) showLoader();
      final Object? requestObject;
      if (isFormData) {
        // If request data is Form data
        FormData requestFormData =
            FormData.fromMap(requestData ?? <String, dynamic>{});
        if (mediaXFiles != null && mediaXFiles.isNotEmpty) {
          // Having XFile to attatch
          List multiparts = await getMultipartFilesFromXfiles(mediaXFiles);
          for (dio.MultipartFile singleMultipart in multiparts) {
            requestFormData.files
                .add(MapEntry(fileKey ?? 'files', singleMultipart));
          }
        }
        if (mediaFiles != null && mediaFiles.isNotEmpty) {
          // Having File to attatch
          for (File mediaFile in mediaFiles) {
            requestFormData.files.add(MapEntry(
                fileKey ?? 'files',
                dio.MultipartFile.fromFileSync(mediaFile.path,
                    contentType: getMediaTypeFromFile(mediaFile),
                    filename: getFileNameFromFile(mediaFile))));
          }
        }

        requestObject = requestFormData;
      } else {
        // If request data is Raw data

        requestObject = requestData;
      }
      try {
        response = await _dio.patch(
          requestUrl,
          data: requestObject,
          options: dio.Options(headers: header),
        );

        if (enableLoading) dismissLoader();
      } on DioException catch (error) {
        if (enableLoading) dismissLoader();
        // Retriving Response Error
        if (error.response?.statusCode == 401) {
          _loginCredential.clearLoginCredentialAndMoveToLogin();
        }
        try {
          Map<String, dynamic> messageMap =
              error.response?.data as Map<String, dynamic>;
          responseErrorMessage = messageMap['message'];
        } catch (error) {
          responseErrorMessage = 'Api Error';
        }
        // showErrorSnackkbar(message: responseErrorMessage);
        debugPrint(responseErrorMessage);
        return ApiResponse(isSuccessful: false, message: responseErrorMessage);
      } on SocketException catch (error) {
        if (enableLoading) dismissLoader();
        responseErrorMessage = error.message;
        // showErrorSnackkbar(message: responseErrorMessage);
        debugPrint(errorMessage);
        return ApiResponse(isSuccessful: false, message: responseErrorMessage);
      } catch (error) {
        if (enableLoading) dismissLoader();
        responseErrorMessage = error.toString();
        // showErrorSnackkbar(message: responseErrorMessage);
        debugPrint(errorMessage);
        return ApiResponse(
          isSuccessful: false,
          message: responseErrorMessage,
        );
      }

      if (response.statusCode == 200) {
        Map<String, dynamic> responseData = response.data;
        debugPrint('$responseData');
        return ApiResponse(
          isSuccessful: true,
          statusCode: responseData[ApiConstant.STATUS_CODE_KEY],
          message: responseData['message'],
          data: responseDataKey != ApiConstant.FULL_RESPONSE
              ? responseData[responseDataKey]
              : responseData,
        );
      } else {
        // showErrorSnackkbar(message: '${response.statusCode}');
        debugPrint('${response.statusCode}');
        return ApiResponse(
          isSuccessful: false,
          statusCode: response.statusCode,
        );
      }
    } else {
      errorMessage = 'You are not connected with mobile/wifi network';
      showWarningSnackkbar(message: errorMessage);
      debugPrint(errorMessage);
      //! Returning Network Not found Error Response
      return ApiResponse(
        isSuccessful: false,
        statusCode: 503,
        message: errorMessage,
      );
    }
  }

  Future<ApiResponse> doDeleteRequest({
    required String apiEndPoint,
    Map<String, dynamic>? requestData,
    List<XFile>? mediaXFiles,
    List<File>? mediaFiles,
    String? fileKey,
    String? errorMessage,
    bool enableLoading = false,
    bool isFormData = false,
    String responseDataKey = ApiConstant.DATA_RESPONSE,
  }) async {
    dio.Response? response;
    String requestUrl = '$baseUrl$apiEndPoint';
    late String responseErrorMessage;
    debugPrint(
        '--------------------------------------Delete Request------------------------------------------------');
    debugPrint('Request Url: $requestUrl\n\n Request Data: $requestData\n');

    if (await isConnectedToInternet()) {
      // Internet Connection is available
      if (enableLoading) showLoader();
      final Object? requestObject;
      if (isFormData) {
        // If request data is Form data
        FormData requestFormData =
            FormData.fromMap(requestData ?? <String, dynamic>{});
        if (mediaXFiles != null && mediaXFiles.isNotEmpty) {
          // Having XFile to attach
          List multiparts = await getMultipartFilesFromXfiles(mediaXFiles);
          for (dio.MultipartFile singleMultipart in multiparts) {
            requestFormData.files
                .add(MapEntry(fileKey ?? 'files', singleMultipart));
          }
        }
        if (mediaFiles != null && mediaFiles.isNotEmpty) {
          // Having File to attach
          for (File mediaFile in mediaFiles) {
            requestFormData.files.add(MapEntry(
                fileKey ?? 'files',
                dio.MultipartFile.fromFileSync(mediaFile.path,
                    contentType: getMediaTypeFromFile(mediaFile),
                    filename: getFileNameFromFile(mediaFile))));
          }
        }
        requestObject = requestFormData;
      } else {
        // If request data is Raw data
        requestObject = requestData;
      }
      try {
        response = await _dio.delete(
          requestUrl,
          data: requestObject,
          options: dio.Options(headers: header),
        );

        if (enableLoading) dismissLoader();
      } on DioException catch (error) {
        if (enableLoading) dismissLoader();
        // Retrieving Response Error
        if (error.response?.statusCode == 401) {
          _loginCredential.clearLoginCredentialAndMoveToLogin();
        }
        try {
          Map<String, dynamic> messageMap =
              error.response?.data as Map<String, dynamic>;
          responseErrorMessage = messageMap['message'];
        } catch (error) {
          responseErrorMessage = 'Api Error';
        }
        // showErrorSnackkbar(message: responseErrorMessage);
        debugPrint(responseErrorMessage);
        return ApiResponse(isSuccessful: false, message: responseErrorMessage);
      } on SocketException catch (error) {
        if (enableLoading) dismissLoader();
        responseErrorMessage = error.message;
        // showErrorSnackkbar(message: responseErrorMessage);
        debugPrint(errorMessage);
        return ApiResponse(isSuccessful: false, message: responseErrorMessage);
      } catch (error) {
        if (enableLoading) dismissLoader();
        responseErrorMessage = error.toString();
        // showErrorSnackkbar(message: responseErrorMessage);
        debugPrint(errorMessage);
        return ApiResponse(
          isSuccessful: false,
          message: responseErrorMessage,
        );
      }

      if (response.statusCode == 200) {
        Map<String, dynamic> responseData = response.data;
        debugPrint('$responseData');
        return ApiResponse(
          isSuccessful: true,
          statusCode: responseData[ApiConstant.STATUS_CODE_KEY],
          message: responseData['message'],
          data: responseDataKey != ApiConstant.FULL_RESPONSE
              ? responseData[responseDataKey]
              : responseData,
        );
      } else {
        // showErrorSnackkbar(message: '${response.statusCode}');
        debugPrint('${response.statusCode}');
        return ApiResponse(
          isSuccessful: false,
          statusCode: response.statusCode,
        );
      }
    } else {
      errorMessage = 'You are not connected with mobile/wifi network';
      showWarningSnackkbar(message: errorMessage);
      debugPrint(errorMessage);
      //! Returning Network Not found Error Response
      return ApiResponse(
        isSuccessful: false,
        statusCode: 503,
        message: errorMessage,
      );
    }
  }

  void endConnection() => _dio.close(force: true);
}
