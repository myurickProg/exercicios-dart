import "dart:io";

void main() {
  //Média de alunos
  print("Digite o nome do aluno: ");
  String? nomeAluno = stdin.readLineSync();

  print("Digite a quantidade de notas do aluno $nomeAluno: ");
  String? input = stdin.readLineSync();

  int? qtdNotas;
  int i = 1;
  List<double> notas = [];
  if (input != null) {
    try {
      qtdNotas = int.parse(input);
      while (i <= qtdNotas) {
        print("Digite a nota $i do aluno $nomeAluno: ");
        String? inputNota = stdin.readLineSync();
        double? nota;
        if (inputNota != null) {
          nota = double.parse(inputNota);
          notas.add(nota);
          print("nota adcionada");
          i++;
        } else {
          return;
        }
      }
      double media = 0.0;
      for (double nota in notas) {
        media += nota;
      }

      media = media / qtdNotas;
      print("Média do aluno $nomeAluno: $media");
    } catch (e) {
      print("Erro ao ler quantidade de notas");
    }
  }

  //Lista de compras
  print("Digite a quantidade de itens no carrinho: ");
  String? input = stdin.readLineSync();

  int? qtdItens;
  List<String> carrinho = [];
  if (input != null) {
    try {
      qtdItens = int.parse(input);
      for (int i = 1; i <= qtdItens; i++) {
        print("Digite o nome do item $i: ");
        String? inputItem = stdin.readLineSync();
        if (inputItem != null) {
          carrinho.add(inputItem);
        } else {
          return;
        }
      }

      for (String item in carrinho) {
        print("Item: $item");
      }
    } catch (e) {
      print("Erro ao ler quantidade de itens");
    }
  }

  //Busca em uma lista
  print("Digite um número: ");
  String? input = stdin.readLineSync();

  int? numero;
  List<int> listaNumeros = [];
  for (int i = 0; i <= 100; i++) {
    listaNumeros.add(i);
  }
  if (input != null) {
    try {
      numero = int.parse(input);
      bool numeroEncontrado = false;
      listaNumeros.forEach((item) {
        if (item == numero) {
          numeroEncontrado = true;
        }
      });
      if (numeroEncontrado) {
        print("O número $numero foi encontrado na lista");
      } else {
        print("O número $numero não foi encontrado na lista");
      }
    } catch (e) {
      print("Erro ao ler número");
    }
  }

  //Imprimir elementos pares numa lista
  print("Digite a quantidade de números da lista: ");
  String? input = stdin.readLineSync();

  int? qtdLista;
  List<int> listaNumeros = [];
  if (input != null) {
    try {
      qtdLista = int.parse(input);
      for (int i = 1; i <= qtdLista; i++) {
        print("Digite o número $i: ");
        String? input2 = stdin.readLineSync();
        int? numero;
        if (input2 != null) {
          numero = int.parse(input2);
          listaNumeros.add(numero);
        }
      }
      listaNumeros.forEach((item) {
        if (item % 2 == 0) {
          print("par na lista: $item");
        }
      });
    } catch (e) {
      print("Erro ao ler quantidade de números");
    }
  }

  //Substituição de números ímpares numa lista por 0
  print("Digite a quantidade de números da lista: ");
  String? input = stdin.readLineSync();

  int? qtdLista;
  List<int> listaNumeros = [];
  if (input != null) {
    try {
      qtdLista = int.parse(input);
      for (int i = 1; i <= qtdLista; i++) {
        print("Digite o número $i: ");
        String? input2 = stdin.readLineSync();
        int? numero;
        if (input2 != null) {
          numero = int.parse(input2);
          listaNumeros.add(numero);
        }
      }
      // listaNumeros.forEach((item) {
      //   if (item % 2 != 0) {
      //     listaNumeros[item] = 0;
      //   }
      // });

      //professor, aparentemente o foreach em dart não permite modificar diretamente os elementos da lista durante a iteração
      //por isso tive que usar a solução abaixo para resolver a questão
      for (int i = 0; i < listaNumeros.length; i++) {
        if (listaNumeros[i] % 2 != 0) {
          listaNumeros[i] = 0;
        }
      }
      print("Lista atualizada: ");
      for (int numero in listaNumeros) {
        print(numero);
      }
    } catch (e) {
      print("Erro ao ler quantidade de números");
    }
  }

  //Soma dos elementos de uma lista
  print("Digite a quantidade de números da lista: ");
  String? input = stdin.readLineSync();

  int? qtdLista;
  List<int> listaNumeros = [];
  if (input != null) {
    try {
      qtdLista = int.parse(input);
      for (int i = 1; i <= qtdLista; i++) {
        print("Digite o número $i: ");
        String? input2 = stdin.readLineSync();
        int? numero;
        if (input2 != null) {
          numero = int.parse(input2);
          listaNumeros.add(numero);
        }
      }
      int somaElementos = 0;
      listaNumeros.forEach((elemento) {
        somaElementos += elemento;
      });
      print("Soma dos elementos da lista: $somaElementos");
    } catch (e) {
      print("Erro ao ler quantidade de números");
    }
  }
}
