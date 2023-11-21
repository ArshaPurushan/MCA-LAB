#include<stdio.h>
int rear=-1,front=-1;
int q[50];
int max=50;
void enqueue();
void dequeue();
void search();
void display();
int main()
{
	int choice;
	do{
	printf("1.Enqueue\n");
	printf("2.Dequeue\n");
	printf("3.search\n");
	printf("4.display\n");
	printf("5.exit\n");
	printf("Enter your choice\n");
	scanf("%d",&choice);
	switch(choice){
		case 1:enqueue();
		break;
		case 2:dequeue();
		break;
		case 3:search();
		break;
		case 4:display();
		break;
		case 5:return 0;
		default:printf("Invalid choice\n");
	}
	}while(choice!=0);
}		

void enqueue()
{
	int item;
	printf("Enter the element to be inserted: \n");
	scanf("%d",&item);
	
	int crear=rear;
	rear=(rear+1)%max;
	if(rear==front)
	{
		printf("Queue is full\n");
		rear=crear;
	}
	else if(front==-1)
	{
		front=0;
		rear=0;
		q[rear]=item;
	}
	else
	{
		q[rear]=item;
	}
}

void dequeue()
{
 	if(front==-1)
 	{
  		printf("underflow");
 	}
 	else if(front==rear)
 	{
  		printf("deleting element is %d\n",q[front]);
  		front=-1;
  		rear=-1;
 	}
 	else
 	{
 
 		printf("deleting element is %d\n",q[front]);
		front=(front+1)%max;
 	}
} 

void search()
{
 	int item,i=1,dfront=front;
 	printf("\nEnter element:");
 	scanf("%d",&item);
 	if(front==-1)
 	{
  		printf("queue is empty:");
 	}
 	else
 	{
  		for(;dfront!=rear;dfront=((dfront+1)%(max)))
  		{
   			if(q[dfront]==item)
   			{
    			printf("\nelement found at position %d\n",i);
   			}
   		i++;
 		 }
 	 if(q[dfront]==item)
  	{
  		 printf("\nElement found at pos %d\n",i);
 	}
 	}
}

void display()
{
	int i=front;
	if(front==-1)
	{
		printf("Queue is empty\n");
	}
	else
	{
		for(;i!=rear;i=((i+1)%(max)))
		{
		printf("\t%d",q[i]);
		}
		printf("\t%d\n",q[i]);
		}
}
				
