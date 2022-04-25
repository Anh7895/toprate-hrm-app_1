class DefaultConfig {
  ///Base Url API
  static const baseUrl = r'https://api-thrm.toprate.io/domain-services';

  ///Suffix API
  static const loginEndPoint = '/login';
  static const usersEndPoint = '/users';
  static const getInfoEndPoint = '/me';

  // static const loginUrl = baseUrl + imagePath;
  static const loginUrl = baseUrl + loginEndPoint;
  static const users = baseUrl + usersEndPoint;
  static const getInfo = baseUrl + getInfoEndPoint;

}
