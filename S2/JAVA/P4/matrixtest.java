//matrix addition

import java.util.Scanner;
class matrix
{
	int r,c;
	int[][] mat =new int[20][20];
	void read()
	{
		int i,j;
		Scanner scan=new Scanner(System.in);
		System.out.println("enter the rows and columns:");
		r=scan.nextInt();
		c=scan.nextInt();
		System.out.println("enter the elements");
		for(i=1;i<=r;i++)
		{
			for(j=1;j<=c;j++)
			{
				this.mat[i][j]=scan.nextInt();
			}
		}
 
	}
	void display()
	{
		int i,j; 
		for(i=1;i<=r;i++)
		{
			for(j=1;j<=c;j++)
			{
				System.out.print(mat[i][j]+" ");
			}
			System.out.println("");
		}
	}
}
class matrixtest
{
	public static matrix add(matrix a,matrix b)
	{
			int i,j;
			matrix m=new matrix();
			m.r=a.r;
			m.c=a.c;
			for(i=1;i<=a.r;i++)
			{
				for(j=1;j<=a.c;j++)
				{
					m.mat[i][j]=a.mat[i][j]+b.mat[i][j];
				}
			}
		return m;
	}
	public static void main(String arg[])
	{
		 matrix m1=new matrix();
		 matrix m2=new matrix();
		 m1.read();
		 m2.read();
		 System.out.println("First Matrix:");
		 m1.display();
		 System.out.println("Second Matrix:");
		 m2.display();
		 if(m1.r==m2.r && m1.c==m2.c)
		{
			 matrix m=new matrix();
			 System.out.println("Resultant Matrix:");
			 m=add(m1,m2);
			 m.display();
		 }
		 else
		{
				System.out.println("addition not possible");
		}
	}
}

