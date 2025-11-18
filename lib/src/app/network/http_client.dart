import 'package:http/http.dart' as http;

class HttpClient {
  static http.Client? _instance;

  static http.Client get instance {
    _instance ??= http.Client();
    return _instance!;
  }
}
