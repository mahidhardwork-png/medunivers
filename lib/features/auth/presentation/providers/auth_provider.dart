import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/di/providers.dart';
import '../../domain/entities/app_user.dart';

final authStateProvider = StreamProvider<AppUser?>((ref) => ref.watch(authRepositoryProvider).authState());

class AuthNotifier extends StateNotifier<AsyncValue<AppUser?>> {
  AuthNotifier(this._ref) : super(const AsyncData(null));
  final Ref _ref;

  Future<void> signIn(String email, String password) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _ref.read(signInUseCaseProvider).call(email, password));
  }

  Future<void> signUp(String email, String password, AppRole role) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _ref.read(signUpUseCaseProvider).call(email, password, role));
  }

  Future<void> signOut() => _ref.read(signOutUseCaseProvider).call();
}

final authNotifierProvider = StateNotifierProvider<AuthNotifier, AsyncValue<AppUser?>>((ref) => AuthNotifier(ref));
