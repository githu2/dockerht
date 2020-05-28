#include<stdio.h>
#include<stdlib.h>


int main(void)
{
	FILE *fp;
	char name[25];

	fp=fopen("Dockerfile1.txt", "r+");
	 while(fgets(name, 25, fp) != NULL)
	 {
		 printf("%s\n",name);
	 }
	fclose(fp); 
	return 0;
}
