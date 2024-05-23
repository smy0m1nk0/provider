import 'package:flutter_riverpod/flutter_riverpod.dart';

class Counter {
  final int count;
 const  Counter({required this.count});

  @override
  String toString() => 'Counter(count: $count)';
}

final counterProvider = Provider.autoDispose.family<int, Counter>((ref, c) {
  return c.count;
});


final autoDisposeFamilyHelloProvider = Provider.autoDispose.family<String, String>((ref, name) {
  ref.onDispose(() => print('Disposed $name')); 
  return 'Hello, $name!';
});