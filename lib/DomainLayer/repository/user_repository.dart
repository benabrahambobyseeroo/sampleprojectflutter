import 'package:injectable/injectable.dart';

abstract class AuthRepository {
  Future<String> signIn({
    required String phoneNumber,
    required String password,
  });
}
