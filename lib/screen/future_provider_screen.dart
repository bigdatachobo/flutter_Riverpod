import 'package:flutter/material.dart';
import 'package:flutter_playground/layout/default_layout.dart';
import 'package:flutter_playground/riverpod/future_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FutureProviderScreen extends ConsumerWidget {
  const FutureProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(multiplesFutureProvider);

    return DefaultLayout(
      title: 'FutureProviderScreen',
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            state.when(
              data: (data) {
                return Text(
                  data.toString(),
                  textAlign: TextAlign.center,
                );
              },
              error: (err, stack) => Text(
                err.toString(),
              ),
              loading: () => const Center(child: CircularProgressIndicator()),
            ),
          ]),
    );
  }
}
