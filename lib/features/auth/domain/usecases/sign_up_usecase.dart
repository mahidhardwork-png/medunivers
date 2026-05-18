import '../entities/app_user.dart';
import '../repositories/auth_repository.dart';

class SignUpUseCase {
  SignUpUseCase(this._repo);
  final AuthRepository _repo;

  Future<AppUser> call(String email, String password, AppRole role) => _repo.signUp(email, password, role);
}
