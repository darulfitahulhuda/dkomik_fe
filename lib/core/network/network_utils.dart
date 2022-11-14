part of 'network.dart';

class NetworkUtils {
  NetworkUtils._();

  static Dio client({
    Map<String, dynamic>? headers,
    int? connectTimeOut,
    int? receiveTimeOut,
    int? sendTimeOut,
  }) {
    var dio = Dio(BaseOptions(
        headers: headers,
        connectTimeout: connectTimeOut ?? 10000,
        receiveTimeout: receiveTimeOut ?? 30000,
        sendTimeout: sendTimeOut,
        contentType: Headers.jsonContentType,
        responseType: ResponseType.json));

    dio.interceptors
        .add(LogInterceptor(requestHeader: true, requestBody: true));
    return dio;
  }

  static bool isUnauthorized(Failure error) {
    if (error.errorCode == NetworkCode.UNAUTHORIZED) {
      return true;
    }
    return false;
  }

  static bool isExpired(Failure error) {
    if ((error.errorCode == NetworkCode.UNAUTHORIZED ||
            error.errorCode == NetworkCode.REFRESH_TOKEN_EXPIRED) &&
        error.errorMessage.contains("expired") == true) {
      return true;
    }
    return false;
  }
}

class NetworkCode {
  // ignore: constant_identifier_names
  static const UNAUTHORIZED = 401;
  // ignore: constant_identifier_names
  static const REFRESH_TOKEN_EXPIRED = 403;
}
