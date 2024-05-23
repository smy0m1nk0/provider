import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/pages/auto_dispose_family/auto_dispose_family_provider.dart';

class AutoDisposeFamilyTestPage extends ConsumerStatefulWidget {
  const AutoDisposeFamilyTestPage({super.key});

  @override
  ConsumerState<AutoDisposeFamilyTestPage> createState() => _AutoDisposeFamilyTestPageState();
}

class _AutoDisposeFamilyTestPageState extends ConsumerState<AutoDisposeFamilyTestPage> {
  String name = 'John';
@override
  Widget build(BuildContext context) {
    final helloThere = ref.watch(autoDisposeFamilyHelloProvider(name));
    return Scaffold(
      appBar: AppBar(
        title: const Text('AutoDisposeFamilyTestProvider'),
      ),
      body:  Center(
        child: Column(
          children: [
            Text(
          helloThere,
          style: const TextStyle(fontSize: 30),
        ),
       const SizedBox(height: 20,),
       FilledButton(onPressed: (){
        name = name == 'John' ? 'Jane' : 'John';
       }, child: const Text('Change Name'))
      
          ],
        )
      ),
    );
  }
}
