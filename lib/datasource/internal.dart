

class Internal {
  static Internal _instance = new Internal.internal();

  Internal.internal();

  factory Internal() => _instance;
}
