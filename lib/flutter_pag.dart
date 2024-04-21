
import 'flutter_pag_platform_interface.dart';

class FlutterPag {
  Future<String?> getPlatformVersion() {
    return FlutterPagPlatform.instance.getPlatformVersion();
  }
}
