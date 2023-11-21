#include<stdio.h>
int maxsize=50;
int front=-1,rear=-1;
int q[50];
int enqueue();
int dequeue();
int show();
int main()
{
int choice;
while(1)
{
printf("1->insertion\n1->deletion\n 3->show\n 4->exit\n");
printf("eneter your choice");
scanf("%d",&choice);
switch(choice)
{
case 1: enqueue();
        break;
case 2: dequeue();
        break;
case 3: show();
        break;
case 4: return 0;
        break;
default:printf("invalid choice");
}
}          
}             
int enqueue()
{
int x;
if(rear==maxsize-1)
{
printf("queue is full");
}
else
{
if(front==-1)
front=0;
printf("enter the element to be inserted \n");
scanf("%d",&x);
rear=rear+1;
q[rear]=x;
}
return 0;
}
int dequeue()
{
if(front==-1 || front>rear)
{
printf("quueue is empty");
}
else
{
printf("the deleting element is%d",q[front]);
front=front+1;
}
return 0;
}
int show()
{
printf("the elements are");
for(int i=front;i<=rear;i++)
printf("%d",q[i]);
return 0;
}

