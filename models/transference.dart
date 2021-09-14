class Transference {
  final double valor;
  final int numeroConta;

  Transference(this.valor, this.numeroConta);

  @override
  String toString() {
    return 'Transference{valor: $valor, numeroConta: $numeroConta}';
  }
}