import 'package:get_it/get_it.dart';
import 'package:new_clean_arch/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:new_clean_arch/layers/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:new_clean_arch/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:new_clean_arch/layers/data/repositories/salvar_carro_favorito_repository_imp.dart';
import 'package:new_clean_arch/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:new_clean_arch/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:new_clean_arch/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:new_clean_arch/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';
import 'package:new_clean_arch/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:new_clean_arch/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';
import 'package:new_clean_arch/layers/presentation/controllers/carro_controller.dart';

class Inject {
  static void init() {
//vamos inicializar nosso get_it
    GetIt getIt = GetIt.instance(); //aqui ele recupera a instancia do get_it

    //vamos seguir essa ordem de injeção de dependencia: datasources, repositories, usecases e controllers.
    //datasource
    getIt.registerLazySingleton<GetCarrosPorCorDataSource>(() =>
        GetCarrosPorCorLocalDataSourceImp()); //passamos o tipo da interface e depois sua implementação
    //repositories

    getIt.registerLazySingleton<GetCarrosPorCorRepository>(
        () => GetCarrosPorCorRepositoryImp(getIt()));

    getIt.registerLazySingleton<SalvarCarroFavoritoRepository>(
        () => SalvarCarroFavoritoRepositoryImp());

    //usecases
    getIt.registerLazySingleton<GetCarrosPorCorUseCase>(
        () => GetCarrosPorCorUseCaseImp(getIt()));
    getIt.registerLazySingleton<SalvarCarroFavoritoUseCase>(
        () => SalvarCarroFavoritoUseCaseImp(getIt()));

    //controllers

    getIt.registerFactory<CarroController>(() => CarroController(getIt(),
        getIt())); //aqui ele sempre irá gerar um novo objeto, diferente dos de cima que fará um objeto quando chamado
    //mas manterá esse mesmo objeto do começo ao fim da aplicação, ou caso ele seja limpo.
  }
}
