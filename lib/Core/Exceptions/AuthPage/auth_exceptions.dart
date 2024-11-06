abstract class AuthExceptions implements Error {
  final String message;
  AuthExceptions(this.message);
}

abstract class SignUpButtonException implements AuthExceptions {}

abstract class LoginPageException implements AuthExceptions {}