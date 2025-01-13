import 'package:flutter/foundation.dart';

class ApiEndpoint {

  static const String baseUrl = kDebugMode
      ? 'https://ok.surf/api/v1'
      : 'https://ok.surf/api/v1';

  static const String getNews= '/news-feed';

}
