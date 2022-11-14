part of 'error.dart';

class CacheException implements Exception {
  final int errorCode;
  final String errorMessage;

  const CacheException({this.errorCode = 0, this.errorMessage = ""});
}

class ServerException implements Exception {
  final int errorCode;
  final String errorMessage;
  final dynamic data;

  const ServerException(
      {this.errorCode = 0, this.errorMessage = "", this.data});
}
