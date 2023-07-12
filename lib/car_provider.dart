import 'package:copywith_concept/car_notifier.dart';
import 'package:copywith_concept/car_notifier_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final carProvider = StateNotifierProvider<CarNotifier,CarNotifierState>((ref) => CarNotifier());

