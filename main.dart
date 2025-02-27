import 'dart:io';

List<String> categoriasValidas = ["eletronicos", "alimentos", "vestuario", "livros"];

void validarCategoria() {
  stdout.write("Digite a categoria do produto (${categoriasValidas.join(', ')}): ");
  String? categoria = stdin.readLineSync()?.trim().toLowerCase();

  if (categoria != null && categoriasValidas.contains(categoria)) {
    print("Categoria válida: $categoria");
  } else {
    print("Categoria inválida. Tente novamente.");
    validarCategoria(); // Chama a função novamente para nova tentativa
  }
}

void main() {
  validarCategoria();
}
  