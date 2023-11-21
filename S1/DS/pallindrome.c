#include<stdio.h>
int main()
{
	int num,r=0,n,temp;
	printf("enter the number");
	scanf("%d",&num);
	temp=num;
	while(num>0)
	{
		n=num%10;
		r=r*10+n;
		num=num/10;
	}
	if(temp==r)
	printf("%d is a pallindrome",temp);
	else
	printf("%d is not a pallindrome",temp);
return 0;
	
}
