import 'package:dartz/dartz.dart';

import '../dto/carro_dto.dart';

abstract class GetCarrosPorCorDataSource {
  //esse é o contrato do meu datasource que pode ser usado em diversos lugares para buscar dados.
  Either<Exception, CarroDto> call(String cor);
}
