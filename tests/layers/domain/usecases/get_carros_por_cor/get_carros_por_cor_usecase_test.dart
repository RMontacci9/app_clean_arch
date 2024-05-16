import 'package:flutter_test/flutter_test.dart';
import 'package:new_clean_arch/layers/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:new_clean_arch/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:new_clean_arch/layers/domain/entities/carro_entity.dart';
import 'package:new_clean_arch/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:new_clean_arch/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';

main() {
  test('Teste que deve retornar um carro quando passar qualquer cor', () {
    GetCarrosPorCorUseCase
        _getCarrosPorCorUseCase = //sempre instanciamos a interface e passamos seu valor com a implementação!
        GetCarrosPorCorUseCaseImp(
            GetCarrosPorCorRepositoryImp(GetCarrosPorCorLocalDataSourceImp()));

    var result = _getCarrosPorCorUseCase('azul');
    late CarroEntity carroEsperado;
    result.fold((error) => null, (success) => carroEsperado = success);

    expect(
        carroEsperado,
        isInstanceOf<
            CarroEntity>()); //isInstanceOf usamos para ver se tal entidade/objeto foi instanciado.
  });

  test('Teste que deve retornar um carro vermelho de 4 portas', () {
    GetCarrosPorCorUseCase _getCarrosPorCorUseCase = GetCarrosPorCorUseCaseImp(
        GetCarrosPorCorRepositoryImp(GetCarrosPorCorLocalDataSourceImp()));

    var result = _getCarrosPorCorUseCase('vermelho');
    late CarroEntity carroEsperado;
    result.fold((error) => null, (success) => carroEsperado = success);

    expect(carroEsperado.qtdPortas, 4);
  });

  test('Teste que deve retornar um carro de qualquer cor com 2 portas', () {
    GetCarrosPorCorUseCase _getCarrosPorCorUseCase = GetCarrosPorCorUseCaseImp(
        GetCarrosPorCorRepositoryImp(GetCarrosPorCorLocalDataSourceImp()));

    var result = _getCarrosPorCorUseCase('vermelho');
    late CarroEntity carroEsperado;
    result.fold((error) => null, (success) => carroEsperado = success);

    expect(carroEsperado.qtdPortas, 2);
  });
}
