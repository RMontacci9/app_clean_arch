import 'package:dartz/dartz.dart';
import 'package:new_clean_arch/layers/domain/entities/carro_entity.dart';
import 'package:new_clean_arch/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:new_clean_arch/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';

class SalvarCarroFavoritoUseCaseImp implements SalvarCarroFavoritoUseCase {
  final SalvarCarroFavoritoRepository _salvarCarroFavoritoRepository;

  SalvarCarroFavoritoUseCaseImp(this._salvarCarroFavoritoRepository);

  @override
  Future<Either<Exception, bool>> call(CarroEntity carroEntity) async {
    carroEntity.setLogica();
    return await _salvarCarroFavoritoRepository(
        carroEntity); //usar o call automaticamente o dart ja entende que está chamando o metodo. o Then aguarda um resultado de alguma função
  }
}
