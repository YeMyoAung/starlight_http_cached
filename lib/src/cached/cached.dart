part of starlight_http_cached;

class StarlightHttpCached {
  ///Private Constructor
  StarlightHttpCached._();

  ///To initialize [StarlightHttpCached]
  static Future<void> get instance => _instance();

  ///private initialize [Future]
  static Future<void> _instance() async {
    _directory = await getTemporaryDirectory();
  }

  ///cached directory [Directory]
  static Directory? _directory;

  ///private call back [Void]
  static void _callBack(dynamic data, Function(String data) callback) {
    if (data is Map) {
      callback(data.encode());
      return;
    } else if (data is List) {
      callback(data.encode());
      return;
    } else if (data is String) {
      callback(data);
      return;
    } else if (data is int) {
      callback(data.encode());
      return;
    } else if (data is double) {
      callback(data.encode());
      return;
    } else if (data is bool) {
      callback(data.encode());
      return;
    } else {
      throw Exception("Unknown object!");
    }
  }

  ///Set Cached [Void]
  static void setCached({
    required String name,
    required dynamic data,
  }) async {
    if (_directory == null) {
      throw Exception("No instance not found.");
    }
    try {
      _callBack(data, (String chunk) {
        final File _file = File('${_directory!.path}/$name');
        _file.writeAsStringSync(chunk, flush: true);
      });
    } catch (e) {
      ///ToDo
    }
  }

  ///Get Cached [dynamic]
  static dynamic getCached({required String name}) {
    if (_directory == null) {
      throw Exception("No instance not found.");
    }
    try {
      final File _file = File('${_directory!.path}/$name');
      return json.decode(_file.readAsStringSync());
    } catch (e) {
      return null;
    }
  }

  ///Delete Cached [Void]
  static void deleteCached({
    required String name,
  }) {
    final File _file = File('${_directory!.path}/$name');
    try {
      _file.deleteSync();
    } catch (e) {
      ///ToDo
    }
  }

  ///Has Cached [bool]
  static bool hasCached({required String name}) {
    if (_directory == null) {
      throw Exception("No instance not found.");
    }
    try {
      final File _file = File('${_directory!.path}/$name');
      return _file.existsSync();
    } catch (e) {
      return false;
    }
  }
}
