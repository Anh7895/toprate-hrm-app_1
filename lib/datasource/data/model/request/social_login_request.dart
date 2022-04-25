
class SocialRequest{
  final String accessToken;

  SocialRequest(this.accessToken);

  @override
  List<Object> get props => [accessToken];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['access_token'] = this.accessToken;
    return data;
  }
}