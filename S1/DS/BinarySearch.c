#include<stdio.h>
 
int main()
{
 int first=0,last,mid,a[20],num,n,i,flag=0;
 
 printf("enter the size of array:");
 scanf("%d",&n);
 last=n;
 printf("enter the aray elements:\n");
 for(i=0;i<n;i++)
 {
   scanf("%d",&a[i]); 
 }
 
 printf("enter the element to search:");
 scanf("%d",&num);
 
 while(first<=last)
 {
  mid=(first+last)/2;
 
  if(a[mid]==num)
  {
    printf("the element is found in %d position:\n",mid=mid+1);
    flag++;
    break;
  }
  else if(a[mid]>num)
   {
    last=mid-1;
 
   } 
  else
   {
    first=mid+1;
   } 
 
} 
 if(flag==0)
 {
   printf("element is not found \n");
 }
 
 
}
 
