import '../entities/app_user.dart';
import '../repositories/auth_repository.dart';

class SignUpUseCase {
  SignUpUseCase(this._repository);

  final AuthRepository _repository;

  Future<AppUser> call(String email, String password, AppRole role) {
    return _repository.signUp(email, password, role);
  }
}
