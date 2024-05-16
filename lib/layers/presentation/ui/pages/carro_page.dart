import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:new_clean_arch/layers/presentation/controllers/carro_controller.dart';

class CarroPage extends StatelessWidget {
  CarroPage({super.key});

  CarroController carroController = GetIt.I.get<CarroController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(24),
        child: Text(carroController.carro.placa),
      ),
    );
  }
}
