// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'family_provider.g.dart';

// final familyHelloProvider = Provider.family<String, String>((ref, name) {
//   return 'Hello, $name!';
// });

@Riverpod(keepAlive: true)
String familyHello(FamilyHelloRef ref,{required String name}) {
  ref.onDispose(()=>print('Family Dispose'));
  return 'Hello $name';
}