import 'package:flutter_test/flutter_test.dart';
import 'package:new_clean_arch/layers/domain/entities/carro_entity.dart';

main() {
  test('Teste para saber se a entidade é nula', () {
    CarroEntity _carroEntity =
        CarroEntity(placa: 'ABCD', qtdPortas: 2, valor: 10.000);

    expect(_carroEntity, isNotNull);
  });

  test('Espero que a quantidade de portas seja 2', () {
    CarroEntity _carroEntity =
        CarroEntity(placa: 'ABCD', qtdPortas: 2, valor: 10.000);

    expect(_carroEntity.qtdPortas, 2);
  });

  test('Espero que o valor real seja 2000', () {
    CarroEntity _carroEntity =
        CarroEntity(placa: 'ABCD', qtdPortas: 2, valor: 1000);

    expect(_carroEntity.valorReal, 2000);
  });

  test('Espero que o valor seja 30000', () {
    CarroEntity _carroEntity =
        CarroEntity(placa: 'ABCD', qtdPortas: 2, valor: 15000);

    _carroEntity.setLogica();

    expect(_carroEntity.valor, 30000.00);
  });
}
