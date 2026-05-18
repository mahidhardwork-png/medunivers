import '../../domain/entities/app_user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_data_source.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._remote);
  final AuthRemoteDataSource _remote;

  @override
  Stream<AppUser?> authState() => _remote.authState();

  @override
  Future<AppUser> signIn(String email, String password) => _remote.signIn(email, password);

  @override
  Future<AppUser> signUp(String email, String password, AppRole role) => _remote.signUp(email, password, role);

  @override
  Future<void> signOut() => _remote.signOut();
}
