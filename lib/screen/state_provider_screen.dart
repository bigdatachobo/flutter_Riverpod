import 'package:flutter/material.dart';
import 'package:flutter_playground/layout/default_layout.dart';
import 'package:flutter_playground/riverpod/state_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StateProviderScreen extends ConsumerWidget {
  const StateProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(numberProvider);

    return DefaultLayout(
      title: 'StateProviderScreen',
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            provider.toString(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    ref
                        .read(numberProvider.notifier)
                        .update((state) => state + 1);
                  },
                  child: const Text('UP')),
              const SizedBox(
                width: 16.0,
              ),
              ElevatedButton(
                  onPressed: () {
                    ref.read(numberProvider.notifier).state =
                        ref.read(numberProvider.notifier).state - 1;
                  },
                  child: const Text('DOWN'))
            ],
          )
        ]),
      ),
    );
  }
}
