class CarroEntity {
  CarroEntity(
      {required this.placa, required this.qtdPortas, required this.valor});

  String placa;
  int qtdPortas;
  double valor;

  double get valorReal {
    return valor * qtdPortas;
  }

  setLogica() {
    if (valorReal > 10000.00) {
      valor *= 2;
    }
  }
}
