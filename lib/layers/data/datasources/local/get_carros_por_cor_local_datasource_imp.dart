import 'package:dartz/dartz.dart';
import 'package:new_clean_arch/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:new_clean_arch/layers/data/dto/carro_dto.dart';

import '../../../domain/entities/carro_entity.dart';

class GetCarrosPorCorLocalDataSourceImp implements GetCarrosPorCorDataSource {
  final jsonVermelho = {
    'placa': 'ABCD123',
    'quantidadeDePortas': 4,
    'valorFinal': 50000.00,
  };
  final jsonAny = {
    'placa': 'QWE',
    'quantidadeDePortas': 2,
    'valorFinal': 10000.00,
  };

  @override
  Either<Exception, CarroDto> call(String cor) {
    try {
      if (cor.contains('vermelho')) {
        return Right(CarroDto.fromMap(jsonVermelho));
      } else {
        return Right(CarroDto.fromMap(jsonAny));
      }
    } catch (e) {
      return Left(Exception('error em datasource: $e'));
    }
  }
}
