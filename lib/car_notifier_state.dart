import 'package:equatable/equatable.dart';

class CarNotifierState extends Equatable{

  final int carWheels;
  final String carColor;
  final String price;

  @override
  // TODO: implement props
  List<Object?> get props => [carWheels,carColor,price];

  CarNotifierState({required this.carWheels, required this.carColor, required this.price});

  CarNotifierState copyWith ({int? carWheels, String? carColor, String? price})=>
      CarNotifierState(
          carWheels: carWheels ?? this.carWheels,
          carColor: carColor?? this.carColor,
          price: price??this.price
      );

  factory CarNotifierState.init()=> CarNotifierState(carWheels: 0, carColor: "red", price: "1200");

}