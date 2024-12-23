class AuthResponse {
  final String tokenType;
  final int expiresIn;
  final String accessToken;

  AuthResponse({
    required this.tokenType,
    required this.expiresIn,
    required this.accessToken,
  });

  // Factory method to create an instance from JSON
  factory AuthResponse.fromJson(Map<String, dynamic> json) {
    return AuthResponse(
      tokenType: json['token_type'],
      expiresIn: json['expires_in'],
      accessToken: json['access_token'],
    );
  }

  // Method to convert instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'token_type': tokenType,
      'expires_in': expiresIn,
      'access_token': accessToken,
    };
  }
}
