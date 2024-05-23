import 'package:flutter_riverpod/flutter_riverpod.dart';

final familyHelloProvider = Provider.family<String, String>((ref, name) {
  return 'Hello, $name!';
});