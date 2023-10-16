import 'dart:io';

class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa(this.nome, this.peso, this.altura);
}

double calcularIMC(double peso, double altura) {
  return peso / (altura * altura);
}

void main() {
  print("Calculadora de IMC");

  try {
    stdout.write("Digite seu nome:");
    String nome = stdin.readLineSync()!;

    stdout.write("Digite seu peso em kg:");
    double peso = double.parse(stdin.readLineSync()!);

    stdout.write(" Digite sua altura em metros:");
    double altura = double.parse(stdin.readLineSync()!);

    Pessoa pessoa = Pessoa(nome, peso, altura);

    double imc = calcularIMC(pessoa.peso, pessoa.altura);

    print("\nResultado:");
    print("Nome: ${pessoa.nome}");
    print("Peso: ${pessoa.peso} kg");
    print("Altura: ${pessoa.altura} m");
    print("IMC: $imc");

    if (imc < 16) {
      print("Magreza grave");
    } else if (imc > 16 && imc < 17) {
      print("Magreza moderada");
    } else if (imc > 17 && imc < 18.5) {
      print("Magreza leve");
    } else if (imc >18.5 && imc < 25) {
      print("Saudável");
    } else if (imc > 25 && imc < 30) {
      print("Sobrepeso");
    } else if (imc > 30 && imc < 35) {
      print("Obesidade Grau I");
    } else if (imc > 35 && imc < 40) {
      print("Obesidade Grau II (severa)");
    }else if (imc <= 40) {
      print("Obesidade Grau III (mórbida)");
    }
  } catch (e) {
    print("Erro: Certifique-se de inserir valores numéricos válidos para peso e altura.");
  }
}
