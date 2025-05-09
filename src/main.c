#include <stdio.h>
#include "average.h"
int main()
{
	printf("Hello from C");
	float array[] = {-1.0, -10.2, 2.5, 3.7, 44.31};
	float avg = average(array,sizeof(array)/sizeof(float));
	printf("Average: %.2f\r\n", avg);

	return 0;
}
