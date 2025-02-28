// QUESTÃO 5 - VALIDAÇÃO DE MÉTODOS DE PAGAMENTO EM UMA PLATAFORMA DE E-COMMERCE

//Descrição da questão: Você está desenvolvendo uma plataforma de e-commerce onde a pessoa usuária pode escolher entre diferentes métodos de pagamento como cartao, boleto, paypal e pix. Crie uma função que solicite à pessoa usuária o método de pagamento desejado e valide se a entrada é válida, solicitando novamente em caso de erro.

import 'dart:io';

void main() {
  List<String> metodosPagamento = <String> ['cartao', 'boleto', 'paypal', 'pix'];

    void escolhaFormaPagamento() {
        String? formaPagamento;

        while (formaPagamento == null || !metodosPagamento.contains(formaPagamento)) {
        stdout.write("Escolha uma opção de pagamento (${metodosPagamento.join(', ')}): ");
        formaPagamento = stdin.readLineSync();

        if(formaPagamento != null && metodosPagamento.contains(formaPagamento)) {
            print("Forma de pagamento escolhida: ${formaPagamento}");
        } else {
            print("Forma de pagamento inválida ou não inclusa! Escolha uma forma de pagamento válida, por gentileza. ");
        }
      }
    }

    escolhaFormaPagamento();
}