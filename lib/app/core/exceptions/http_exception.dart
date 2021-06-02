class HttpException implements Exception {
  final String message;
  final int statusCode;

  HttpException(this.statusCode, this.message);
}