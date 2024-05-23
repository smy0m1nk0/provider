// import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';



part 'auto_dispose_provider.g.dart';


// final autoDisposeHelloProvider = Provider.autoDispose<String>((ref) {
//   print('[Hello Provider ] Created');
//   ref.onDispose(() => print('[Hello Provider ] Disposed'));
//   return 'Hello, Provider!';
// });


@riverpod
String autoDisposeHello(AutoDisposeHelloRef ref) {
  ref.onDispose(()=> print('Hello Dispose'));
  return 'HelloDispose';
}

