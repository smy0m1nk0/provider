import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/pages/auto_dispose_family/auto_dispose_family_provider.dart';

class AutoDisposeFamilyPage extends ConsumerWidget {
  const AutoDisposeFamilyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final helloJohn = ref.watch(autoDisposeFamilyHelloProvider('John'));
    final helloJane = ref.watch(autoDisposeFamilyHelloProvider('Jane'));
    ref.watch(counterProvider(const Counter(count: 0)));
    ref.watch(counterProvider(const Counter(count: 0)));


    return Scaffold(
      appBar: AppBar(
        title: const Text('AutoDisposeFamilyProvider'),
      ),
      body:  Center(
        child: Column(
          children: [
            Text(
          helloJohn,
          style: const TextStyle(fontSize: 30),
        ),
       const SizedBox(height: 20,),
       Text(
          helloJane,
          style: const TextStyle(fontSize: 30),
        )
          ],
        )
      ),
    );
  }
}
