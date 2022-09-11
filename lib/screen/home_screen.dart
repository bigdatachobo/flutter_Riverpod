import 'package:flutter/material.dart';
import 'package:flutter_playground/layout/default_layout.dart';
import 'package:flutter_playground/screen/listen_provider_screen.dart';
import 'package:flutter_playground/screen/provider_screen.dart';
import 'package:flutter_playground/screen/select_provider_screen.dart';
import 'package:flutter_playground/screen/state_notifier_provider_screen.dart';
import 'package:flutter_playground/screen/state_provider_screen.dart';
import 'package:flutter_playground/screen/stream_provider_screen.dart';

import 'auto_dispose_modifier_screen.dart';
import 'family_modifier_screen.dart';
import 'future_provider_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'HomeScreen',
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => StateProviderScreen()));
            },
            child: const Text('StateProviderScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => StateNotifierProviderScreen()));
            },
            child: const Text('StateNotifierProviderScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => FutureProviderScreen()));
            },
            child: const Text('FutureProviderScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => StreamProviderScreen()));
            },
            child: const Text('StreamProviderScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => FamilyModifierScreen()));
            },
            child: const Text('FamilyModifierScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => AutoDisposeModifierScreen()));
            },
            child: const Text('AutoDisposeModifierScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => ListenProviderScreen()));
            },
            child: const Text('ListenProviderScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => SelectProviderScreen()));
            },
            child: const Text('SelectProviderScreen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => ProviderScreen()));
            },
            child: const Text('ProviderScreen'),
          ),
        ],
      ),
    );
  }
}
