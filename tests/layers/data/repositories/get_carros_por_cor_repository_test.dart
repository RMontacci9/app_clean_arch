import 'package:flutter_test/flutter_test.dart';
import 'package:new_clean_arch/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:new_clean_arch/layers/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:new_clean_arch/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:new_clean_arch/layers/domain/repositories/get_carros_por_cor_repository.dart';

main() {
  GetCarrosPorCorDataSource dataSource = GetCarrosPorCorLocalDataSourceImp();
  GetCarrosPorCorRepository repository =
      GetCarrosPorCorRepositoryImp(dataSource);

  test('Quero que me devolva um carro independente da cor', () {
    var result = repository('qualquer');
    expect(result, isNotNull); //não pode me retornar nada nulo
  });
}
