import 'package:copywith_concept/car_notifier_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CarNotifier extends StateNotifier<CarNotifierState>{

  CarNotifier():super(CarNotifierState.init());

  updateState(CarNotifierState carNotifierState){
    state = carNotifierState;
  }




}