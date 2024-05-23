import 'package:flutter_riverpod/flutter_riverpod.dart';

final helloProvider = Provider<String>((ref) {
  ref.onDispose(() => print('[Hello Provider ] Disposed'));
  return 'Hello, Provider!';
});


final worldProvider = Provider<String>((ref) {
  ref.onDispose(() => print('[World Provider ] Disposed'));
  return 'World!';
});