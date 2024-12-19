import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:sampleproject/DomainLayer/repository/user_repository.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  final Dio dio;

  AuthRepositoryImpl(this.dio);

  @override
  Future<String> signIn({
    required String phoneNumber,
    required String password,
  }) async {
    const String loginType = '1';
    const String deviceId = 'cw9asgw5Tr2imrFEBokGN8:APA91bHA8ejgWhKTay3pZWwN3qLYikcLtCZ560QcyTG0jztafaI6Huc4gpEv5DTC_NBt0ZrutUgQfFo_HagKrC5tCZ_umPVjby08s2mnpcZadJ8mZazNqK8';
    const String deviceType = '1';
    const String appId = '2';
    const String appVersion = '1.0.45';
    const String mobileDeviceName = 'samsung SM-A156E OS_VERSION:14';

    try {
      final response = await dio.post(
        "signin",  // Endpoint for sign-in
        data: {
          'mobile_number': phoneNumber,
          'password': password,
          'login_type': loginType,
          'device_id': deviceId,
          'device_type': deviceType,
          'app_id': appId,
          'app_version': appVersion,
          'mobile_device_name': mobileDeviceName,
        },
      );

      if (response.statusCode == 200) {
        return 'API call success';
      } else {
        return response.data?['message'] ?? 'Unknown error';
      }
    } catch (e) {
      return e.toString();
    }
  }
}
