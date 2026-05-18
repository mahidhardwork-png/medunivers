import '../../domain/entities/app_user.dart';

class AppUserModel extends AppUser {
  const AppUserModel({required super.id, required super.email, required super.name, required super.role});

  factory AppUserModel.fromFirebase({required String id, required String email, String? name, String? role}) {
    return AppUserModel(
      id: id,
      email: email,
      name: name ?? 'MedUniverse User',
      role: _roleFromString(role),
    );
  }

  static AppRole _roleFromString(String? value) {
    switch (value) {
      case 'doctor':
        return AppRole.doctor;
      case 'admin':
        return AppRole.admin;
      default:
        return AppRole.patient;
    }
  }
}
