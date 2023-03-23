#include <stdio.h>
#include <stdlib.h>

int main()
{
	int op;
	
	printf("* * * *  Escolha um dia da semana   * * * *\n\n");
      printf("\n1 - Domingo");
      printf("\n2 - Segunda");
      printf("\n3 - Terca");
      printf("\n4 - Quarta");
      printf("\n5 - Quinta");
      printf("\n6 - Sexta");
      printf("\n7 - Sabado");
      printf("\nDigite a sua opcao: ");
      scanf("%i",&op);
      
      return op;
}
