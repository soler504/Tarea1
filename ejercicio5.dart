void main(List<String> args) {
  CuentaBancaria cuenta = CuentaBancaria(titular: 'Ana María Gallegos');
  cuenta.depositar(500);
  cuenta.retirar(1000);
  cuenta.retirar(200);
  cuenta.consultarSaldo();
}

class CuentaBancaria {
  late String titular;
  double saldo = 0;

  CuentaBancaria({required this.titular}) {}

  void depositar(double cantidad) {
    saldo += cantidad;
    print('depósito realizado con éxito\n');
  }

  void retirar(double cantidad) {
    if (saldo - cantidad < 0) {
      print('Saldo insuficiente');
      consultarSaldo();
      return;
    }

    saldo = saldo - cantidad;
    print('retiro exitoso\n');
  }

  void consultarSaldo() {
    print('Su saldo es ${saldo} \n');
  }
}
