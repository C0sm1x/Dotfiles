# include <stdio.h>
int main()
{

	char romanNumerals[] = {'I', 'V', 'X', 'L', 'C'};
	int dicimal;
	scanf("%d", &dicimal);
	if (dicimal < 0)
	{

		printf("Invalid number. \n");
		main();

	}

	if (dicimal == 0)
	{

			printf("0\n");

	}

	if (dicimal > 0 && dicimal < 4)
	{

		for (int i = 0; i < dicimal; i++)
		{

			printf("%c", romanNumerals[0]);

		}
		printf("\n");

	}

	if (dicimal == 4)
	{

		printf("%c%c", romanNumerals[0], romanNumerals[1]);
		printf("\n");

	}
	if (dicimal == 5)
	{

		printf("%c", romanNumerals[1]);
		printf("\n");

	}
	if (dicimal > 5 && dicimal < 9)
	{
		printf("%c",romanNumerals[1]);
		dicimal = dicimal - 5;
		for (int i = 0; i < dicimal; i++)
		{

			printf("%c", romanNumerals[0]);

		}

		printf("\n");

	}
	if (dicimal == 9)
	{

		printf("%c%c",romanNumerals[0], romanNumerals[2]);
		printf("\n");

	}
	if (dicimal == 10)
	{

		printf("%c",romanNumerals[2]);
		printf("\n");

	}
	if (dicimal > 10 && dicimal < 14)
	{

		printf("%c", romanNumerals[2]);
		dicimal = dicimal - 10;
		for(int i = 0; i < dicimal; i++)
		{

			printf("%c", romanNumerals[0]);

		}

		printf("\n");

	}

	if (dicimal == 14)
	{

		printf("%c%c%c", romanNumerals[2], romanNumerals[0], romanNumerals[1]);	
		printf("\n");

	}
	if (dicimal == 15)
	{

		printf("%c%c", romanNumerals[2], romanNumerals[1]);	
		printf("\n");
	
	}
	if (dicimal > 15 && dicimal < 19)
	{


		printf("%c%c", romanNumerals[2], romanNumerals[1]);
		dicimal = dicimal - 15;
		for( int i = 0; i < dicimal; i++)
		{

			printf("%c", romanNumerals[0]);
		
		}

		printf("\n");

	}
	if (dicimal == 19)
	{

		printf("%c%c%c", romanNumerals[2], romanNumerals[0], romanNumerals[2]);
		printf("\n");

	}
	if (dicimal == 20)
	{
	
		printf("%c%c",romanNumerals[2], romanNumerals[2]);
		printf("\n");

	}
	if (dicimal > 20 && dicimal < 24)
	{

		printf("%c%c", romanNumerals[2], romanNumerals[2]);
		dicimal = dicimal - 20;
		for(int i = 0; i < dicimal; i++)
		{

			printf("%c", romanNumerals[0]);

		}
		
		printf("\n");

	}
	if (dicimal == 24)
	{
	
	printf("%c%c%c%c", romanNumerals[2], romanNumerals[2], romanNumerals[0], romanNumerals[1]);
	printf("\n");

	}
	if (dicimal == 25)
	{
	
	printf("%c%c%c", romanNumerals[2], romanNumerals[2], romanNumerals[1]);
	printf("\n");

	}
	if (dicimal > 25 && dicimal < 29)
	{


		printf("%c%c%c", romanNumerals[2], romanNumerals[2], romanNumerals[1]);
		dicimal = dicimal - 25;
		for( int i = 0; i < dicimal; i++)
		{

			printf("%c", romanNumerals[0]);
		
		}

		printf("\n");

	}
	if (dicimal == 29)
	{
	
		printf("%c%c%c%c", romanNumerals[2], romanNumerals[2], romanNumerals[0], romanNumerals[2]);
		printf("\n");
	
	}
	if (dicimal == 30)
	{
	
		printf("%c%c%c",romanNumerals[2], romanNumerals[2], romanNumerals[2]);
		printf("\n");

	}
	if (dicimal > 30 && dicimal < 34)
	{

		printf("%c%c%c", romanNumerals[2], romanNumerals[2], romanNumerals[2]);
		dicimal = dicimal - 30;
		for(int i = 0; i < dicimal; i++)
		{

			printf("%c", romanNumerals[0]);

		}
		
		printf("\n");

	}
	if (dicimal == 34)
	{
	
	printf("%c%c%c%c%c", romanNumerals[2], romanNumerals[2], romanNumerals[2], romanNumerals[0], romanNumerals[1]);
	printf("\n");

	}
	if (dicimal == 35)
	{
	
	printf("%c%c%c%c", romanNumerals[2], romanNumerals[2], romanNumerals[2], romanNumerals[1]);
	printf("\n");

	}
	if (dicimal > 35 && dicimal < 39)
	{


		printf("%c%c%c%c", romanNumerals[2], romanNumerals[2], romanNumerals[2], romanNumerals[1]);
		dicimal = dicimal - 35;
		for( int i = 0; i < dicimal; i++)
		{

			printf("%c", romanNumerals[0]);
		
		}

		printf("\n");

	}
	if (dicimal == 39)
	{
	
		printf("%c%c%c%c%c", romanNumerals[2], romanNumerals[2], romanNumerals[2], romanNumerals[0], romanNumerals[2]);
		printf("\n");
	
	}
	if (dicimal == 40)
	{
	
		printf("%c%c",romanNumerals[2], romanNumerals[3]);
		printf("\n");

	}
	if (dicimal > 40 && dicimal < 44)
	{

		printf("%c%c", romanNumerals[2], romanNumerals[3]);
		dicimal = dicimal - 40;
		for(int i = 0; i < dicimal; i++)
		{

			printf("%c", romanNumerals[0]);

		}
		
		printf("\n");

	}
	if (dicimal == 44)
	{
	
	printf("%c%c%c%c", romanNumerals[2], romanNumerals[3], romanNumerals[0], romanNumerals[1]);
	printf("\n");

	}
	if (dicimal == 45)
	{
	
	printf("%c%c%c", romanNumerals[2], romanNumerals[3], romanNumerals[1]);
	printf("\n");

	}
	if (dicimal > 45 && dicimal < 49)
	{


		printf("%c%c%c", romanNumerals[2], romanNumerals[3], romanNumerals[1]);
		dicimal = dicimal - 45;
		for( int i = 0; i < dicimal; i++)
		{

			printf("%c", romanNumerals[0]);
		
		}

		printf("\n");

	}
	if (dicimal == 49)
	{
	
		printf("%c%c%c%c", romanNumerals[2], romanNumerals[3], romanNumerals[0], romanNumerals[2]);
		printf("\n");
	
	}
	if (dicimal == 50)
	{
	
		printf("%c",romanNumerals[3]);
		printf("\n");

	}
	if (dicimal > 50 && dicimal < 54)
	{

		printf("%c", romanNumerals[3]);
		dicimal = dicimal - 50;
		for(int i = 0; i < dicimal; i++)
		{

			printf("%c", romanNumerals[0]);

		}
		
		printf("\n");

	}
	if (dicimal == 54)
	{
	
	printf("%c%c%c", romanNumerals[3], romanNumerals[0], romanNumerals[1]);
	printf("\n");

	}
	if (dicimal == 55)
	{
	
	printf("%c%c", romanNumerals[3], romanNumerals[1]);
	printf("\n");

	}
	if (dicimal > 55 && dicimal < 59)
	{


		printf("%c%c", romanNumerals[3], romanNumerals[1]);
		dicimal = dicimal - 55;
		for( int i = 0; i < dicimal; i++)
		{

			printf("%c", romanNumerals[0]);
		
		}

		printf("\n");

	}
	if (dicimal == 59)
	{
	
		printf("%c%c%c%c", romanNumerals[3], romanNumerals[1], romanNumerals[0], romanNumerals[2]);
		printf("\n");
	
	}
	if (dicimal == 60)
	{
	
		printf("%c%c",romanNumerals[3], romanNumerals[2]);
		printf("\n");

	}
	if (dicimal > 60 && dicimal < 64)
	{

		printf("%c%c", romanNumerals[3], romanNumerals[2]);
		dicimal = dicimal - 60;
		for(int i = 0; i < dicimal; i++)
		{

			printf("%c", romanNumerals[0]);

		}
		
		printf("\n");

	}
	if (dicimal == 64)
	{
	
	printf("%c%c%c%c", romanNumerals[3], romanNumerals[2], romanNumerals[0], romanNumerals[1]);
	printf("\n");

	}
	if (dicimal == 65)
	{
	
	printf("%c%c%c", romanNumerals[3], romanNumerals[2], romanNumerals[1]);
	printf("\n");

	}
	if (dicimal > 65 && dicimal < 69)
	{


		printf("%c%c%c", romanNumerals[3], romanNumerals[2], romanNumerals[1]);
		dicimal = dicimal - 65;
		for( int i = 0; i < dicimal; i++)
		{

			printf("%c", romanNumerals[0]);
		
		}

		printf("\n");

	}
	if (dicimal == 69)
	{
	
		printf("%c%c%c%c", romanNumerals[3], romanNumerals[2], romanNumerals[0], romanNumerals[2]);
		printf("\n");
	
	} 
	if (dicimal == 70)
	{
	
		printf("%c%c%c",romanNumerals[3], romanNumerals[2], romanNumerals[2]);
		printf("\n");

	}
	if (dicimal > 70 && dicimal < 74)
	{

		printf("%c%c%c", romanNumerals[3], romanNumerals[2], romanNumerals[2]);
		dicimal = dicimal - 70;
		for(int i = 0; i < dicimal; i++)
		{

			printf("%c", romanNumerals[0]);

		}
		
		printf("\n");

	}
	if (dicimal == 74)
	{
	
	printf("%c%c%c%c%c%c", romanNumerals[3], romanNumerals[2], romanNumerals[2], romanNumerals[0], romanNumerals[1]);
	printf("\n");

	}
	if (dicimal == 75)
	{
	
	printf("%c%c%c%c", romanNumerals[3], romanNumerals[2], romanNumerals[2], romanNumerals[1]);
	printf("\n");

	}
	if (dicimal > 75 && dicimal < 79)
	{


		printf("%c%c%c%c", romanNumerals[3], romanNumerals[2], romanNumerals[2], romanNumerals[1]);
		dicimal = dicimal - 75;
		for( int i = 0; i < dicimal; i++)
		{

			printf("%c", romanNumerals[0]);
		
		}

		printf("\n");

	}
	if (dicimal == 79)
	{
	
		printf("%c%c%c%c%c", romanNumerals[3], romanNumerals[2], romanNumerals[2], romanNumerals[0], romanNumerals[2]);
		printf("\n");
	
	} 
	if (dicimal == 80)
	{
	
		printf("%c%c%c%c", romanNumerals[3], romanNumerals[2], romanNumerals[2], romanNumerals[2]);
		printf("\n");

	}
	if (dicimal > 80 && dicimal < 84)
	{

		printf("%c%c%c%c", romanNumerals[3], romanNumerals[2], romanNumerals[2], romanNumerals[2]);
		dicimal = dicimal - 80;
		for(int i = 0; i < dicimal; i++)
		{

			printf("%c", romanNumerals[0]);

		}
		
		printf("\n");

	}
	if (dicimal == 84)
	{
	
	printf("%c%c%c%c%c%c", romanNumerals[3], romanNumerals[2], romanNumerals[2], romanNumerals[2], romanNumerals[0], romanNumerals[1]);
	printf("\n");

	}
	if (dicimal == 85)
	{
	
	printf("%c%c%c%c%c", romanNumerals[3], romanNumerals[2], romanNumerals[2], romanNumerals[2], romanNumerals[1]);
	printf("\n");

	}
	if (dicimal > 85 && dicimal < 89)
	{


		printf("%c%c%c%c%c", romanNumerals[3], romanNumerals[2], romanNumerals[2], romanNumerals[2], romanNumerals[1]);
		dicimal = dicimal - 85;
		for( int i = 0; i < dicimal; i++)
		{

			printf("%c", romanNumerals[0]);
		
		}

		printf("\n");

	}
	if (dicimal == 89)
	{
	
		printf("%c%c%c%c%c%c", romanNumerals[3], romanNumerals[2], romanNumerals[2], romanNumerals[2], romanNumerals[0], romanNumerals[2]);
		printf("\n");
	
	} 
	if (dicimal == 90)
	{
	
		printf("%c%c", romanNumerals[2], romanNumerals[4]);
		printf("\n");

	}
	if (dicimal > 90 && dicimal < 94)
	{

		printf("%c%c", romanNumerals[2], romanNumerals[4]);
		dicimal = dicimal - 90;
		for(int i = 0; i < dicimal; i++)
		{

			printf("%c", romanNumerals[0]);

		}

		printf("\n");
		
	}
	if (dicimal == 94)
	{
	
	printf("%c%c%c%c", romanNumerals[2], romanNumerals[4], romanNumerals[0], romanNumerals[1]);
	printf("\n");

	}
	if (dicimal == 95)
	{
	
	printf("%c%c%c", romanNumerals[2], romanNumerals[4], romanNumerals[1]);

	}
	if (dicimal > 95 && dicimal < 99)
	{


		printf("%c%c%c", romanNumerals[2], romanNumerals[4], romanNumerals[1]);
		dicimal = dicimal - 95;
		for( int i = 0; i < dicimal; i++)
		{

			printf("%c", romanNumerals[0]);
		
		}

		printf("\n");

	}
	if (dicimal == 99)
	{
	
		printf("%c%c%c%c", romanNumerals[2], romanNumerals[4], romanNumerals[0], romanNumerals[2]);
		printf("\n");
	
	} 
	if (dicimal == 100)
	{

		printf("%c", romanNumerals[4]);
		printf("\n");

	}
	 
	return 0;

}

