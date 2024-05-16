import 'package:dartz/dartz.dart';

import '../../domain/entities/carro_entity.dart';
import '../../domain/repositories/salvar_carro_favorito_repository.dart';

class SalvarCarroFavoritoRepositoryImp
    implements SalvarCarroFavoritoRepository {
  @override
  Future<Either<Exception, bool>> call(CarroEntity carroEntity) async {
    //o either sempre retorna um lado, esquerdo ou direito, sendo que o direito é sucesso e o esquerdo é a exception

    try {
      return Right(carroEntity.valor > 0);
    } catch (e) {
      return Left(Exception('repository error: $e'));
    }
  }
}
