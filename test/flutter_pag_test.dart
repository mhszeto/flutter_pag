import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_pag/flutter_pag.dart';
import 'package:flutter_pag/flutter_pag_platform_interface.dart';
import 'package:flutter_pag/flutter_pag_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterPagPlatform
    with MockPlatformInterfaceMixin
    implements FlutterPagPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterPagPlatform initialPlatform = FlutterPagPlatform.instance;

  test('$MethodChannelFlutterPag is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterPag>());
  });

  test('getPlatformVersion', () async {
    FlutterPag flutterPagPlugin = FlutterPag();
    MockFlutterPagPlatform fakePlatform = MockFlutterPagPlatform();
    FlutterPagPlatform.instance = fakePlatform;

    expect(await flutterPagPlugin.getPlatformVersion(), '42');
  });
}
