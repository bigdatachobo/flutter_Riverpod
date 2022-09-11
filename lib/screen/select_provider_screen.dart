import 'package:flutter/material.dart';
import 'package:flutter_playground/layout/default_layout.dart';
import 'package:flutter_playground/riverpod/select_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectProviderScreen extends ConsumerWidget {
  const SelectProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // watch는 build를 재실행하는 함수
    final state = ref.watch(selectProvider.select((value) => value.isSpicy));

    // listen은 build 재실행 안됨
    ref.listen(selectProvider.select((value) => value.hasBought),
        (previous, next) {
      print('next: $next');
    });
    return DefaultLayout(
      title: 'SelectProviderScreen',
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(state.toString()),
            // Text(state.name),
            // Text('isSpicy : ${state.isSpicy.toString()}'),
            // Text('hasBought: ${state.hasBought.toString()}'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    ref.read(selectProvider.notifier).toggleIsSpicy();
                  },
                  child: const Text('   Spicy Toggle   '),
                ),
                const SizedBox(
                  width: 16.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    ref.read(selectProvider.notifier).toggleHasBought();
                  },
                  child: const Text('HasBought Toggle'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
