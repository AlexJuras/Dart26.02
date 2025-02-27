import 'dart:io';

void main() {
  double saldo = 0.0;

  while (true) {
    print("\n1 - Depositar");
    print("2 - Sacar");
    print("3 - Ver Saldo");
    print("4 - Sair");
    stdout.write("Escolha uma opção: ");
    String? opcao = stdin.readLineSync();

    if (opcao == '1') {
      stdout.write("Valor do depósito: ");
      double? deposito = double.tryParse(stdin.readLineSync() ?? '');
      if (deposito != null && deposito > 0) saldo += deposito;
    } else if (opcao == '2') {
      stdout.write("Valor do saque: ");
      double? saque = double.tryParse(stdin.readLineSync() ?? '');
      if (saque != null && saque > 0 && saque <= saldo) saldo -= saque;
    } else if (opcao == '3') {
      print("Saldo: R\$ $saldo");
    } else if (opcao == '4') {
      break;
    }
  }
}
