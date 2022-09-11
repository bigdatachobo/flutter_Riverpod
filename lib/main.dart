import 'package:flutter/material.dart';
import 'package:flutter_playground/riverpod/provider_observer.dart';
import 'package:flutter_playground/screen/home_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      observers: [
        Logger(),
      ],
      child: MaterialApp(
        home: HomeScreen(),
      ),
    ),
  );
}
