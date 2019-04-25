class ModeUtil {
  static String mode = "release";

  static bool get debugMode {
    var debug = false;
    assert(debug = true);
    return debug;
  }

  static debugPrint(Object message) {
    var x = debugMode;
    if (x == true) {
      print(message);
    }
  }

  static isDebugMode() {
    assert(() {
      mode = "debug";
      return true;
    }());
  }
}
