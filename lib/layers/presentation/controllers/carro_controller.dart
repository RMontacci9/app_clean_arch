import 'package:new_clean_arch/layers/domain/entities/carro_entity.dart';
import 'package:new_clean_arch/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:new_clean_arch/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';

class CarroController {
//aqui nós chamamos nosso usecase e tratamos dele para mandar para nossa view
  CarroController(this._carroFavoritoUseCase, this._carrosPorCorUseCase) {
    _getCarro(
        'vermelho'); //assim que meu controller for criado ele vai chamar um carro
  }

  GetCarrosPorCorUseCase _carrosPorCorUseCase;

  SalvarCarroFavoritoUseCase _carroFavoritoUseCase;

  late CarroEntity
      carro; //nossa variavel manipulavel que gerenciaremos o estado

  _getCarro(String cor) {
    //aqui ele pega o carro com o parametro da cor
    var result = _carrosPorCorUseCase(cor);
    result.fold(
        (error) => print(error.toString()), //aqui nos tratamos o erro
        (success) =>
            carro = success); //se der sucesso passamos seu valor para o carro
  }

  salvarCarro(CarroEntity carro) async {
    //aqui ele salva o carro recebendo um state pattern do carro, retorna um bool caso dê certo.
    var result = await _carroFavoritoUseCase(carro);
  }
}
