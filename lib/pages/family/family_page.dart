import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/pages/family/family_provider.dart';

class FamilyPage extends ConsumerWidget {
  const FamilyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
        final helloJohn = ref.watch(familyHelloProvider('John'));
    final helloJane = ref.watch(familyHelloProvider('Jane'));
    return Scaffold(
      appBar: AppBar(
        title: const Text('FamilyProvider'),
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
