#include<stdio.h>
int expo(int x,int p);
int main()
{
int x,n,result;
printf("enter the base value");
scanf("%d",&x);
printf("enter the exponent value");
scanf("%d",&n);
result=expo(x,n);
printf("the result is %d",result);
return 0;
}
int expo(int x,int n)
{
if(n!=0)
{
return (x*expo(x,n-1));
}
else
{
return 1;
}
}
