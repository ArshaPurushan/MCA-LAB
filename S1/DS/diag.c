#include<stdio.h>
int main()
{
int n,a[100][100],i,j;
printf("enter the no of row and columns");
scanf("%d",&n);
printf("the magtrix elements are");
for(i=0;i<n;i++)
{
for(j=0;j<n;j++)
{
scanf("%d",&a[i][j]);
}
}
printf("the off diagonal element is:");
for(i=0;i<n;i++)
{
for(j=0;j<n;j++)
{
if(i!=j)
{
printf("%d",a[i][j]);
}
}
}
}
