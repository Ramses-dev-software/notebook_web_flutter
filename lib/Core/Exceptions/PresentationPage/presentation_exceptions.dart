abstract  class PresentationViewException extends Error {
  final String message;
  PresentationViewException(this.message); 
}

abstract class APIException implements PresentationViewException {
  @override
  final String message;
  APIException(this.message);
}

abstract class SignUpButtonException implements PresentationViewException {
  @override
  final String message;
  SignUpButtonException(this.message);
}

abstract class DownloadException implements PresentationViewException {
  @override
  final String message;
  DownloadException(this.message);
}