import 'dart:io';

void main() {
  List<String> categorias = <String>[
    "eletronicos",
    "alimentos",
    "vestuario",
    "livros",
  ];

  void cadastrarCategoria() {
    stdout.write(
      "Digite a categoria do produto (eletronicos, alimentos, vestuario e livros): ",
    );
    String categoria = stdin.readLineSync()!;

    if (!categorias.contains(categoria)) {
      print("Categoria inválida!");
      cadastrarCategoria();
    } else {
      print("Categoria válida: ${categoria.toString()}");
    }
  }

  cadastrarCategoria();
}
