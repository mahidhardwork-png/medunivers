import '../repositories/auth_repository.dart';

class SignOutUseCase {
  SignOutUseCase(this._repo);
  final AuthRepository _repo;
  Future<void> call() => _repo.signOut();
}
