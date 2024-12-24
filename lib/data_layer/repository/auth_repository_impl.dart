import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:sampleproject/domain_layer/repository/user_repository.dart';
// import 'auth_repository.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final Dio dio;

  AuthRepositoryImpl(this.dio);

  @override
  Future<String> signIn({
    required String phoneNumber,
    required String password,
  }) async {
    // Define required constants
    const String loginType = '1';
    const String deviceId = 'sample_device_id'; // You might want to retrieve this dynamically
    const String deviceType = '1';
    const String appId = '2';
    const String appVersion = '1.0.45';
    const String mobileDeviceName = 'samsung SM-A156E';

    try {
      final response = await dio.post(
        "signin",  // Replace with the actual API endpoint
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
        // Assuming response.data contains the authentication token
        return response.data['access_token'] ?? 'No token found';
      } else {
        // If status code is not 200, return the error message
        return 'Error: ${response.data['message'] ?? 'Unknown error'}';
      }
    } catch (e) {
      // Catch any exceptions and return a generic error message
      return 'Error: $e';
    }
  }
}
