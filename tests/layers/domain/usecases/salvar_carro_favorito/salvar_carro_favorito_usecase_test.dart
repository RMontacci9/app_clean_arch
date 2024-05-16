import 'package:flutter_test/flutter_test.dart';
import 'package:new_clean_arch/layers/data/repositories/salvar_carro_favorito_repository_imp.dart';
import 'package:new_clean_arch/layers/domain/entities/carro_entity.dart';
import 'package:new_clean_arch/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:new_clean_arch/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:new_clean_arch/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';

main() {
  test('Teste para salvar o carro se o valor for maior que 0', () async {
//vamos fazer a inversão de dependencia aqui
    SalvarCarroFavoritoUseCase _useCase = SalvarCarroFavoritoUseCaseImp(
        SalvarCarroFavoritoRepositoryImp()); //aqui a implementação espera receber um repositório para salvar

    CarroEntity carroEntity =
        CarroEntity(placa: 'placa', qtdPortas: 2, valor: 10000);
    var result = await _useCase(carroEntity);

    late bool resultadoEsperado;

    result.fold((error) => null, (success) => resultadoEsperado = success);

    expect(resultadoEsperado, true);
  });

  test('Teste para não salvar o carro se o valor for menor que 0', () async {
//vamos fazer a inversão de dependencia aqui
    SalvarCarroFavoritoUseCase _useCase = SalvarCarroFavoritoUseCaseImp(
        SalvarCarroFavoritoRepositoryImp()); //aqui a implementação espera receber um repositório para salvar

    CarroEntity carroEntity =
        CarroEntity(placa: 'placa', qtdPortas: 2, valor: 0);
    var result = await _useCase(carroEntity);

    late bool resultadoEsperado;

    result.fold((error) => null, (success) => resultadoEsperado = success);

    expect(resultadoEsperado, false);
  });
}
