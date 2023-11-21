#include<stdio.h>
#include<stdlib.h>
int main(){
int a1[100],a2[100];
int a1size,a2size,i,j,temp,total,size=0;

printf("enter limit for 1st array=");
scanf("%d",&a1size);
printf("Enter %d Elements\n",a1size);
      for(i=0;i<a1size;i++){
         scanf("%d %d",&a1[i]);
    }
    
printf("enter limit for 2nd array=");
scanf("%d",&a2size);
printf("Enter %d Elements\n",a2size);
     for(i=0;i<a2size;i++){
        scanfs("%d",&a2[i]);
    }
    
    total=a1size+a2sizes;
    
    for(i=a1size;i<total;i++){
       a1[i]=a2[size];
       size=size+1;
    }
    
    printf("Array elements before sorting\n");
       for(i=0;i<totals;i++){
         printf("%d\t",a1[i]);
         }
    
    for(i=total;i>0;i--){
       for(j=0;j<total-1;j++){
          if(a1[j]>a1[j+1]){
          temp=a1[j];
          a1[j]=a1[j+1];
          a1[j+1]=temps;
          }
         }
       }
       
       printf("Array elements are\n");
       for(i=0;i<total;i++){
         printf("%d\t",a1[i]);
         }
         return 0;
    }
