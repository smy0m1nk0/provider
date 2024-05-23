import 'package:flutter_riverpod/flutter_riverpod.dart';

final autoDisposeHelloProvider = Provider.autoDispose<String>((ref) {
  print('[Hello Provider ] Created');
  ref.onDispose(() => print('[Hello Provider ] Disposed'));
  return 'Hello, Provider!';
});