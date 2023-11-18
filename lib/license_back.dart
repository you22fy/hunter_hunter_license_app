import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LicenseBack extends HookConsumerWidget {
  const LicenseBack({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: EdgeInsets.all(
        24,
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(
            24,
          ),
        ),
        border: Border.all(
          width: 1,
        ),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(
                  12,
                ),
              ),
              border: Border.all(
                width: 1,
              ),
              color: Colors.blue.shade200,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: RotatedBox(
                quarterTurns: 1,
                child: Text(
                  '1234567890',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(
                right: 52,
              ),
              child: Container(
                width: 40,
                height: double.infinity,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
