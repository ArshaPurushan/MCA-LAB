#include<stdio.h>
int maxsize=10;
int top=-1,stack[10];
int pop();
int push();
int show();
int main()
{
int choice;
while(1)
{
printf("1=>push---\n 2=>pop---\n 3=>show the current element in the stack\n--4=>end\n");
printf ("enetr ur choice 1-4 \n");
scanf("%d",&choice);
switch(choice)
{
case 1:
push();
break;
case 2: 
pop();
break;
case 3:
show();
break;
case 4:
return 0;
default:
printf("invalid choice");
}
}
}
int push()
{
int x;
if(top==maxsize-1)
{
printf("stack overflow");
}
else
{
printf("enter the element to be inserted \n");
scanf("%d",&x);
top=top+1;
stack[top]=x;
}
return 0;
}
int pop()
{
if(top==-1)
{
printf("underflow condition");
}
else
{
printf("the deleting element is %d\n",stack[top]);
top=top-1;
}
return 0;
}
int show()
{
if(top==-1)
{
printf("underflow");
}
else
{
printf("the elements are");
for(int i=0;i<=top;i++)
printf("%d\n",stack[i]);
}
return 0;
}


