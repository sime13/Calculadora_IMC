import 'dart:io';

import 'package:test/test.dart';

import 'Pessoa.dart';

void main(List<String> arguments) {
  try {
    print("-------------------------------");
    print("------Calculador de IMC-----");
    print("-------------------------------");
    print('');
    print("Digite Seu nome !");
    String Nome = stdin.readLineSync()!;

    print("Digite Sua altura !");
    double Altura = double.parse(stdin.readLineSync()!);

    print("Digite Seu peso !");
    double Peso = double.parse(stdin.readLineSync()!);

    Pessoa pessoa = Pessoa(Nome, Altura, Peso);

    double calcularIMC(Pessoa pessoa) {
      if (pessoa.Altura <= 0 || pessoa.Peso <= 0) {
        throw ArgumentError("Altura e peso devem ser valores positivos.");
      }
      double imc = pessoa.Peso / (pessoa.Altura);
      if (imc < 16) {
        print("Magreza Grave");
      } else if (imc == 16 && imc < 17) {
        print("Magreza moderada");
      } else if (imc == 17 && imc < 18.5) {
        print("Magreza leve");
      } else if (imc == 18.5 && imc < 25) {
        print("Saudvel");
      } else if (imc == 25 && imc < 30) {
        print("Sobrepeso");
      } else if (imc == 30 && imc < 35) {
        print("Obesidade Grau 1");
      } else if (imc == 32 && imc < 40) {
        print("Obesidade Grau 2 (severa)");
      } else if (imc >= 40) {
        print("Obesidade Grau 3 (morbita)");
      }
      return imc;
    }

    double imc = calcularIMC(pessoa);

    print("\nResultado:");
    print("Nome: ${pessoa.Nome}");
    print("Altura: ${pessoa.Altura} metros");
    print("Peso: ${pessoa.Peso} kg");
    print("IMC: $imc");

    //print("Situação: ${interpretarIMC(imc)}");
  } catch (e) {
    print("Erro: $e");
  }

  /* String interpretarIMC(double imc) {
    if (imc < 18.5) {
      return "Abaixo do peso";
    } else if (imc >= 18.5 && imc < 24.9) {
      return "Peso normal";
    } else if (imc >= 25 && imc < 29.9) {
      return "Sobrepeso";
    } else if (imc >= 30 && imc < 34.9) {
      return "Obesidade Grau 1";
    } else if (imc >= 35 && imc < 39.9) {
      return "Obesidade Grau 2";
    } else {
      return "Obesidade Grau 3";
    }
  }*/
}
