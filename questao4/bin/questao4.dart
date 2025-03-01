import 'dart:io';

void main() 
{
  List <String> opcoesBanco = <String> ['sacar', 'depositar','pagamento'];
  
  String? pagamento(){
    stdout.write("Digite uma operação:(Sacar, Depositar ou Pagamento): ");
    String? opcao = stdin.readLineSync();

    if(!opcoesBanco.contains(opcao)){
      stdout.write("Operação inválida, tente novamente");
      return pagamento();
    }
      return opcao;
  }
  
  double valores(){
    stdout.write("Escreva o valor da operação: ");
    double quantia = double.parse(stdin.readLineSync()!);
  

      if (quantia <= 0){
        stdout.write('Valor não válido, tente novamente');
        return valores();
      }  
      return quantia;
    
  }

  var pag = pagamento();
  var val = valores();

  stdout.write("Operação escolhida: $pag, Valor: R\$${val.toStringAsFixed(2)}");
  

// print("Operação escolhida: $pagamento,$valor ");
}
   


