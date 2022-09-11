import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final autoDisposeModifierProvider = FutureProvider.autoDispose<List<int>>(
  (ref) async {
    await Future.delayed(const Duration(seconds: 2));
    return List.generate(5, (index) => index);
  },
);
