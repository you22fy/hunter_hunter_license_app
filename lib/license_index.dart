import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flip_card/flip_card.dart';
import 'package:hunter_card_app/components/app_button.dart';
import 'package:hunter_card_app/license_back.dart';
import 'package:hunter_card_app/license_front.dart';

class LicenseIndex extends HookConsumerWidget {
  const LicenseIndex({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.65,
          child: const FlipCard(
            front: LicenseFront(),
            back: LicenseBack(),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: 24,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AppButton(
                onPressed: null,// TODO: 後で実装する
                text: '保存する',
              ),
              AppButton(
                onPressed: null, // TODO: 後で実装する
                text: '共有する',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
