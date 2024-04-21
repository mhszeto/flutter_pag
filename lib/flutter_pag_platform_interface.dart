import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_pag_method_channel.dart';

abstract class FlutterPagPlatform extends PlatformInterface {
  /// Constructs a FlutterPagPlatform.
  FlutterPagPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterPagPlatform _instance = MethodChannelFlutterPag();

  /// The default instance of [FlutterPagPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterPag].
  static FlutterPagPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterPagPlatform] when
  /// they register themselves.
  static set instance(FlutterPagPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
