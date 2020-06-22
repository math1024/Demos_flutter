class MvcController {
  factory MvcController() => _getInstance();

  static MvcController get instance => _getInstance();
  static MvcController _instance;

  MvcController._internal();

  static MvcController _getInstance() {
    if (_instance == null) {
      _instance = new MvcController._internal();
    }
    return _instance;
  }
}