import 'user_repo.dart';

abstract class UserRepository {
  Stream<MyUser?> get user;
  Future<void> logIn();
  Future<void> signIn();
  Future<void> logOut();
}