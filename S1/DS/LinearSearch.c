#include<stdio.h>
int main()
{
	int n,item,i;
	int a[100];
	
	printf("enter the size\n");
	scanf("%d",&n);
	
	printf("enter the elements\n");
	for(i=0;i<n;i++)
	scanf("%d",&a[i]);
	
	printf("eneter the element to be search\n");
	scanf("%d",&item);
	for(i=0;i<n;i++)
	{
		if(a[i]==item)
		{
		printf("search is successfull\n");
		printf("the position is %d\n",i+1);
		break;
		}
		
	}
	
	if(a[i]!=item)
	{
		printf("no item found\n");
	}
}
