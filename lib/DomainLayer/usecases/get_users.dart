import 'package:injectable/injectable.dart';
import 'package:sampleproject/DomainLayer/repository/user_repository.dart';

@injectable
class SignInUseCase {
  final AuthRepository authRepository;

  SignInUseCase(this.authRepository);

  Future<String> call({
    required String phoneNumber,
    required String password,
  }) async {
    return await authRepository.signIn(
      phoneNumber: phoneNumber,
      password: password,
    );
  }
}
