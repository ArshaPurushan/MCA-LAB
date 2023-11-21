#include<stdio.h>
struct student
{
char name[25];
int roll;
float mark[5];
int total=0;
};
int main()
{
struct student s[5];
int n,j;
printf("enter the no of students ");
scanf("%d",&n);
for(int i=0;i<n;i++)
{
printf("enter the name ");
scanf("%s",s[i].name);
printf("enter the roll no ");
scanf("%d",&s[i].roll);
printf("enter the mark");
for(j=0;j<5;j++)
{
scanf("%f",&s[i].mark[j]);
}
for(int i=0;i<5;i++)
{
s[i].total=s[i].total+s[i].mark[j];
}
printf("the total mark is=%d",s[i].total);
}
for(int i=0;i<n;i++)
{
printf("name=%s \n",s[i].name);
printf("roll no=%d\n",s[i].roll);
printf("total mark=%d\n",s[i].total);
}
return 0;
}
