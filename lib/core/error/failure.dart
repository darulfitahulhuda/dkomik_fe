part of 'error.dart';

abstract class Failure extends Equatable {
  final int errorCode;
  final String errorMessage;
  final dynamic data;

  const Failure({this.errorCode = 0, this.errorMessage = "", this.data});
  @override
  List<Object> get props => [errorCode, errorMessage, data];
}

class ServerFailure extends Failure {
  const ServerFailure({errorCode, errorMessage, data})
      : super(errorCode: errorCode, errorMessage: errorMessage, data: data);

  factory ServerFailure.fromException(ServerException exception) =>
      ServerFailure(
          errorCode: exception.errorCode,
          errorMessage: exception.errorMessage,
          data: exception.data);

  factory ServerFailure.noInternet() =>
      ServerFailure(errorMessage: "No Internet Connection");
}

class CacheFailure extends Failure {
  const CacheFailure({errorCode, errorMessage, data})
      : super(errorCode: errorCode, errorMessage: errorMessage, data: data);

  factory CacheFailure.fromException(CacheException exception) {
    return CacheFailure(
      errorCode: exception.errorCode,
      errorMessage: exception.errorMessage,
    );
  }
}
