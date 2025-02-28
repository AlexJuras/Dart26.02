import 'dart:io';

void main() 
{
  List <String> opcoesBanco = <String> ['sacar', 'depositar','pagamento'];
  
  void pagamento(){
    stdout.write("Digite uma operação:(Sacar, Depositar ou Pagamento): ");
    String? opcao = stdin.readLineSync();

    if(opcoesBanco.contains(opcao)){
      stdout.write("Escreva o valor da operação: ");
      double quantia = double.parse(stdin.readLineSync()!);
      if (quantia > 0){
        stdout.write("Operação escolhida: $opcao, Valor: R\$${quantia.toStringAsFixed(2)}");
      }else{
        stdout.write('Valor não válido, tente novamente');
        pagamento();
      }
    }else{
      stdout.write("Operação inválida, tente novamente");
      pagamento();
    }
    }

// print("Operação escolhida: $pagamento,$valor ");
pagamento();
  }
   


