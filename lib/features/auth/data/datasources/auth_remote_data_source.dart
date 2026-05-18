import 'package:firebase_auth/firebase_auth.dart';

import '../../../../core/storage/secure_storage.dart';
import '../models/app_user_model.dart';
import '../../domain/entities/app_user.dart';

class AuthRemoteDataSource {
  AuthRemoteDataSource(this._auth, this._storage);
  final FirebaseAuth _auth;
  final SecureStorage _storage;

  Stream<AppUser?> authState() => _auth.authStateChanges().map((u) {
        if (u == null || u.email == null) return null;
        return AppUserModel.fromFirebase(id: u.uid, email: u.email!, name: u.displayName);
      });

  Future<AppUserModel> signIn(String email, String password) async {
    final credential = await _auth.signInWithEmailAndPassword(email: email, password: password);
    final token = await credential.user?.getIdToken();
    if (token != null) await _storage.saveAccessToken(token);
    return AppUserModel.fromFirebase(id: credential.user!.uid, email: credential.user!.email!, name: credential.user?.displayName);
  }

  Future<AppUserModel> signUp(String email, String password, AppRole role) async {
    final credential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
    final token = await credential.user?.getIdToken();
    if (token != null) await _storage.saveAccessToken(token);
    return AppUserModel.fromFirebase(id: credential.user!.uid, email: credential.user!.email!, role: role.name);
  }

  Future<void> signOut() async {
    await _storage.clearSession();
    await _auth.signOut();
  }
}
