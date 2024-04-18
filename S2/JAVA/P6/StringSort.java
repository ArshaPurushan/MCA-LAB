import java.util.Scanner;
class StringSort
{
	public static void main(String args[])
	{
		int n;
		Scanner s= new Scanner(System.in);
		System.out.println("Enter no.of strings: ");
		n=s.nextInt();
		s.nextLine();
		String str[]=new String[n];
		System.out.println("Enter strings: ");
		for(int i=0;i<n;i++)
		{
			str[i]=s.nextLine();
		}
		for(int i=0;i<n;i++)
		{
			for(int j=i+1;j<n;j++)
			{
				if(str[i].compareTo(str[j])>0)
				{
				String temp=str[i];
				str[i]=str[j];
				str[j]=temp;
				}
			}
		}
		System.out.println("\n-------Sorted array--------");
		for(int i=0;i<n;i++)
		{
			System.out.println(str[i]);
		}
	}
}	
