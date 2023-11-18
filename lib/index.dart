import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hunter_card_app/license_index.dart';

class Index extends HookConsumerWidget {
  const Index({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hunter license"),
        backgroundColor: Colors.amber.shade100,
      ),
      body: const Padding(
        padding: EdgeInsets.all(
          16,
        ),
        child: LicenseIndex(),
      ),
    );
  }
}
