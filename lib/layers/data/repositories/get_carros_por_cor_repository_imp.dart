import 'package:dartz/dartz.dart';
import 'package:new_clean_arch/layers/data/datasources/get_carros_por_cor_datasource.dart';

import '../../domain/entities/carro_entity.dart';
import '../../domain/repositories/get_carros_por_cor_repository.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  final GetCarrosPorCorDataSource
      _carrosPorCorDataSource; //isso aqui é uma injeção de dependência!

  GetCarrosPorCorRepositoryImp(
      this._carrosPorCorDataSource); //isso aqui é uma inversão de controle, no qual agora quem segue com as regras do datasource é essa classe

  @override
  Either<Exception, CarroEntity> call(String cor) {
    return _carrosPorCorDataSource(cor);
  }
}
