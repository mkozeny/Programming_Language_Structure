#include <stdio.h>


int main()
{
	int a = 1;
	int b = 2;
	void middle()
	{
		int b = a;
		void inner()
		{
			printf("%d, %d\n",a,b);
		}
		int a = 3;
		inner();
		printf("%d, %d\n",a,b);
	}
	middle();
	printf("%d, %d\n",a,b);
	return 0;
}