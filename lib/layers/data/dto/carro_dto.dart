import 'package:new_clean_arch/layers/domain/entities/carro_entity.dart';

class CarroDto extends CarroEntity {
  CarroDto(
      {required this.placa,
      required this.quantidadeDePortas,
      required this.valorFinal})
      : super(placa: placa, qtdPortas: quantidadeDePortas, valor: valorFinal);

  String placa;
  int quantidadeDePortas;
  double valorFinal;

  Map toMap() {
    //serializa para mandar um json na nossa requisição
    return {
      'placa': placa,
      'quantidadeDePortas': quantidadeDePortas,
      'valorFinal': valorFinal,
    };
  }

  static CarroDto fromMap(Map map) {
    //desserializa as informações recebidas da nossa requisição
    return CarroDto(
        placa: map['placa'],
        quantidadeDePortas: map['quantidadeDePortas'],
        valorFinal: map['valorFinal']);
  }
}
