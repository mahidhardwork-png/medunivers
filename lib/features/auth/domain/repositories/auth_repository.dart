import '../entities/app_user.dart';

abstract class AuthRepository {
  Stream<AppUser?> authState();
  Future<AppUser> signIn(String email, String password);
  Future<AppUser> signUp(String email, String password, AppRole role);
  Future<void> signOut();
}
