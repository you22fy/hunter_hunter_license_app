import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LicenseFront extends HookConsumerWidget {
  const LicenseFront({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screen_width = MediaQuery.of(context).size.width;
    return Container(
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
      child: Padding(
        padding: const EdgeInsets.all(
          24,
        ),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
            ),
            color: Colors.blue.shade200,
          ),
          child: Column(
            children: [
              Container(
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                        ),
                        child: Container(
                          width: screen_width * 0.8,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            child: Image.asset('assets/images/card_logo.png'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 8,
                        ),
                        child: Container(
                          color: Colors.white,
                          height: 56,
                          width: screen_width * 0.8,
                          // child: const Text('バーコード'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 42,
                      vertical: 24,
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                      ),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            8,
                          ),
                        ),
                      ),
                      child: const Center(
                        child: Text('ぴょえんじにゃー'),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 21,
                    ),
                    child: Text(
                      'ハンターライセンス\nハンターライセンスカードについて\n本カードは本人以外使用不可能です\n紛失された際、ライセンスが剥奪されることはありませんが、カードの再発行はできません。\n',
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
