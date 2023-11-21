#include<stdio.h>
#include<stdlib.h>
int main()
{
int a[10][10],b[10][10],mul[10][10],r1,r2,c1,c2,i,j,k;
printf("enter the number rows of first matrix");
scanf("%d",&r1);
printf("enetr the number of columns of second matrix");
scanf("%d",&c1);
printf("enter the number rows of second matrix");
scanf("%d",&r2);
printf("enetr the number of columns of second matrix");
scanf("%d",&c2);
if(c1!=r2)
{
printf("multiplication is not applicable");
}
else
{
printf("enetr the elements of first matrix=\n");
for(i=0;i<r1;i++)
{
for(j=0;j<c1;j++)
{
scanf("%d",&a[i][j]);
}
}
printf("enetr the elements of second matrix \n");
for(i=0;i<r2;i++)
{
for(j=0;j<c2;j++)
{
scanf("%d",&b[i][j]);
}
}


printf("matrix multiplication: \n");
for(i=0;i<r1;i++)
{
for(j=0;j<c2;j++)
{
mul[i][j]=0;
for(k=0;k<c1;k++)
{
mul[i][j]+=a[i][k]*b[k][j];
}
}
}
printf("result is=\n");
for(i=0;i<r1;i++)
{
for(j=0;j<c2;j++)
{
printf("%d\t",mul[i][j]);
}
printf("\n");
}
}
return 0;
}
