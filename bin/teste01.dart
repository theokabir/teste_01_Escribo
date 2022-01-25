import 'dart:io';

void main() {
  //* loop principal
  while(true){ 

    try{
      //* entrada do número
      print("entre com o número desejado: ");
      var num = int.parse(stdin.readLineSync()!);
      
      //* algoritmo principal
      int soma = 0;
      List<int> nums = [];
      for(int i = num-1; i > 0; i--){
        if(i%3==0 || i%5==0){
          nums.add(i);
          soma += i;
        }
      }
      print("numeros divisíveis por 3 e 5 menores que $num: $nums");
      print("soma correspondente: $soma");

      //* confirmação de continuação
      print("deseja tentar novamente? [s/n]");
      String opt = stdin.readLineSync()!;
      if(opt.toUpperCase() == "N"){
        print("Você escolbeu fechar o programa.");
        break;
      }
      else if (opt.toUpperCase() != "N" && opt.toUpperCase() != "S"){
        print("O comando não foi bem interpretado. O programa foi fechado.");
        break;
      }

    }on Exception catch(_){
      print ("Ocorreu algum erro durante a execução, o processo iniciará do início.");
    }

  }
}
