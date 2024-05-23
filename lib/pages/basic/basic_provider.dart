// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
// final helloProvider = Provider<String>((ref) {
//   ref.onDispose(() => print('[Hello Provider ] Disposed'));
//   return 'Hello, Provider!';
// });


// final worldProvider = Provider<String>((ref) {
//   ref.onDispose(() => print('[World Provider ] Disposed'));
//   return 'World!';
// });

part 'basic_provider.g.dart';


@Riverpod(keepAlive: true)
 String hello(HelloRef ref) {
  ref.onDispose(() => print('[Hello Provider ] Disposed'));
  return 'Hello, Provider!';
}

@Riverpod(keepAlive: true)
String world (WorldRef ref) {
  ref.onDispose(() => print('[World Provider ] Disposed'));
  return 'World!';
}