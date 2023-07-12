import 'package:copywith_concept/car_notifier_state.dart';
import 'package:copywith_concept/car_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';


class CarScreen extends HookConsumerWidget {
  const CarScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {


    final carRef = ref.watch(carProvider);
    final carController = ref.read(carProvider.notifier);


    final priceController = useTextEditingController();
    final colorController = useTextEditingController();
    final wheelController = useTextEditingController();


    CarNotifierState carA = CarNotifierState(carWheels: 0, carColor: "red", price: "1200");
    CarNotifierState carB =  CarNotifierState(carWheels: 1, carColor: "yellow", price: "13009");
    CarNotifierState carC =  CarNotifierState(carWheels: 2, carColor: "blue", price: "15009");

    return Scaffold(
      body: SafeArea(
        child: SizedBox(width: double.infinity,height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [

            TextFormField(
              controller: wheelController,
              decoration: const InputDecoration(
                hintText: "Wheel",
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 10,),


            TextFormField(
              controller: colorController,
              decoration: const InputDecoration(
                hintText: "Color",
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 10,),



            TextFormField(
              controller: priceController,
              decoration: const InputDecoration(
                hintText: "Price",
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
              ),
            ),



            const SizedBox(height: 20,),

            ElevatedButton(
                onPressed: (){
                  carController.updateState(carRef.copyWith(carColor: colorController.value.text, price: priceController.value.text));
                },
                child: const Text("Update")
            ),



            ElevatedButton(
                onPressed: (){
                  carController.updateState(carA);
                },
                child: const Text("CarA")
            ),


            ElevatedButton(
                onPressed: (){
                  carController.updateState(carB);
                },
                child: const Text("CarB")
            ),

            ElevatedButton(
                onPressed: (){
                  carController.updateState(carC);
                },
                child: const Text("CarC")
            ),



            const SizedBox(height: 10,),

            Text("Wheels : ${carRef.carWheels}"),

            const SizedBox(height: 10,),

            Text("Color : ${carRef.carColor}"),

            const SizedBox(height: 10,),

            Text("Price : ${carRef.price}"),







          ],),
        ),),
      ),
    );
  }
}
