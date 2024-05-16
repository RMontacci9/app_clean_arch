import 'package:flutter/material.dart';
import 'package:new_clean_arch/core/inject/inject.dart';
import 'package:new_clean_arch/layers/presentation/ui/pages/carro_page.dart';

main() {
  Inject
      .init(); //É MUITO IMPORTANTE E INICIALIZAR NOSSO INJECT SEMPRE ANTES DO NOSSO APP
  runApp(
    MaterialApp(
      home: CarroPage(),
    ),
  );
}
