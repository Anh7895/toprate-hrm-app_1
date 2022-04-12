class LoginResponse {
  final String accessToken;

  LoginResponse(this.accessToken);

  LoginResponse.fromJson(Map<String, dynamic> json)
      : accessToken = json["access_token"].toString();
}

