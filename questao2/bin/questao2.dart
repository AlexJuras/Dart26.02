import 'dart:io';

void main() {
  List<String> tiposPermitidos = ["pdf", "jpg", "png", "docx"];

  stdout.write("Digite a extensão do arquivo (pdf, jpg, png, docx): ");
  String? entrada = stdin.readLineSync()?.trim().toLowerCase();

  if (tiposPermitidos.contains(entrada)) {
    print("Tipo de arquivo válido: .$entrada");
  } else {
    print("Tipo de arquivo inválido.");
  }
}
