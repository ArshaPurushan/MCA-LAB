#include<stdio.h>
#include<stdlib.h>

struct node
{
	int data;
	struct node *next;
};
typedef struct node node;
node *head;

void insert_end(){
	int data;
	node *temp,*pre;
	printf("\nenter a value to be inserted\n");
	scanf("%d",&data);
	
	temp=(node*)malloc(sizeof(node));
	temp->data=data;
	
	if(head == NULL){
		head=temp;
		head->next=NULL;
	}
	else{
		pre=head;
		while(pre->next != NULL){
			pre=pre->next;
		}
		pre->next=temp;
		temp->next=NULL;
	}		
}

void insert_first(){
	int data;
	node *temp;
	printf("\nEnter value to be inserted: \n");
	scanf("%d",&data);
	
	temp=(node*)malloc(sizeof(node));
	temp->data=data;
	
	if(head == NULL){
		head=temp;
		head->next=NULL;
	}
	else{
		temp->next=head;
		head=temp;
	}
}

void insert_pos(){
	int data;
	int pos;
	int count=2;
	node *temp,*pre;
	printf("\nenter a value to be inserted\n");
	scanf("%d",&data);
	printf("enter a position to be inserted\n");
	scanf("%d",&pos);
	
	temp=head;
	pre=(node*)malloc(sizeof(node));
	pre->data=data;
	
	if(head==NULL){
		printf("\nList is Empty\n");
	}
	else if(pos == 1){
		pre->next=head;
		head=pre;
	}
	else{
		temp=head;
		while(temp->next != NULL){
		if(pos==count){
			pre->next=temp->next;
			temp->next=pre;
			break;
		}
		else{
			temp=temp->next;
			count++;
		}
		}
	}						
}

void display(){
	node *temp;
	int count=0;
	
	temp=head;
	if(head==NULL){
		printf("\nList is Empty\n");
	}
	else{
		while(temp->next!=NULL){
			printf("List [%d] : %d\n",count,temp->data);
			temp=temp->next;
			count++;
		}
		printf("List [%d] : %d\n",count,temp->data);
	}
	printf("\n");		
}

void search(){
	node *temp;
	int flag=0;
	int count=1;
	temp=head;
	int data;
	printf("\nEnter element to search : \n");
	scanf("%d",&data);
	
	if(head==NULL){
		printf("\nList is Empty\n");
	}
	else{
	     while(temp->next!=NULL){
	     	 if(data==temp->data){
	     	 	flag=1;
	     	 	break;
	     	 }
	     	 temp=temp->next;
	     	 count++;
	     }
	     if(temp->data==data){
	     	flag=1;
	     }
	     if(flag==1){
	     printf("\nElement is Found\n");
	     }
	     else{
	     	printf("\nElement is not found");
	     }	 
	}     	
}


void dlt_end()
{
	node *dlt,*pre;
	pre=NULL;
	dlt=head;
	int i;
	
	if(dlt!=NULL)
	{
		while(dlt->next!=NULL)
		{	
			pre=dlt;
			dlt=dlt->next;
			i=i+1;
		}
		printf("\n Deleting element %d\n",dlt->data);
		if(dlt==head)
		{
			head=NULL;
			free(dlt);
		}	
		else
		{
			pre->next=NULL;
		}
	}
	else
		printf("The linkedlist is empty\n");
}

void dlt_pos()
{

node *pre,*temp;
int pos,i=0;
temp=head;
printf("\nEnter the position of element to be deleted\n");
scanf("%d",&pos);
while(i<pos-1)
{
	temp=temp->next;
	i++;
}
pre=temp->next;
temp->next=pre->next;
printf("deleting element is %d value  %d\n",pos,pre->data);
free(pre);
}	
	

void dlt_strt()
{
	node *dlt;
	dlt=head;
	if(dlt!=NULL)
	{
		head=dlt->next;
		printf("\ndeleting element is %d",dlt->data);
		free(dlt);
	}
	else
		printf("The Linkedlist is empty\n");
}		
				
int main()
{	
	int choice;
	do{
	printf("\n1.insertion in end\n");
	printf("2.insertion in first\n");
	printf("3.insertion in position\n");
	printf("4.deletion in end\n");
	printf("5.deletion in position\n");
	printf("6.deletion in first\n");
	printf("7.search\n");
	printf("8.display\n");
	printf("9.exit\n");
	printf("\nEnter your choice:\n");
	scanf("%d",&choice);
	switch(choice){
		case 1: insert_end();
		break;
		case 2: insert_first();
		break;
		case 3: insert_pos();
		break;
		case 4: dlt_end();
		break;
		case 5: dlt_pos();
		break;
		case 6: dlt_strt();
		break;
		case 7: search();
		break;
		case 8: display();
		break;
		case 9: return 0;
		default: printf("Invalid choice\n");
		}
	}while(choice!=0);
}		
