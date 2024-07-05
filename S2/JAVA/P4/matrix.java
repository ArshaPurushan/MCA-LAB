import java.util.Scanner;

class MatrixAddition
{

	//Input Matrix

	int[][] acceptMatrix(int r1,int c1)
	{
		Scanner s1=new Scanner(System.in);
		
		int[][] m1=new int[r1][c1];
		for(int i=0;i<r1;++i)
		{
			for(int j=0;j<c1;++j)
			{
				m1[i][j]=s1.nextInt();
			}
		}
		return m1;
	}

	//Find Sum

	int[][] sum(int[][] a,int[][] b,int r,int c)
	{
		int[][] matrixsum=new int[r][c];
		for(int i=0;i<r;++i)
		{
			for(int j=0;j<c;++j)
			{
				matrixsum[i][j]=a[i][j]+b[i][j];
			}
		}
		return matrixsum;
	}
	
	//Display Matrix

	void display(int[][] a,int r,int c)
	{
		for(int i=0;i<r;++i)
		{
			for(int j=0;j<c;++j)
			{
				System.out.print(a[i][j]+ " ");
			}
			System.out.println();
		}
	}
}

class matrix
{
	public static void main(String args[])
	{
		Scanner s=new Scanner(System.in);
		
		MatrixAddition m=new MatrixAddition();
		int[][] a=new int[10][10];
		int[][] b=new int[10][10];
		int[][] result=new int[10][10];

		System.out.println("Enter number of rows");
		int r=s.nextInt();
		System.out.println("Enter number of columns");
		int c=s.nextInt();


		System.out.println("Enter Matrix 1 ( "+r*c+" elements )");
		a=m.acceptMatrix(r,c);

		System.out.println("Enter Matrix 2 ( "+r*c+" elements )"); 
		b=m.acceptMatrix(r,c);

		result=m.sum(a,b,r,c);

		System.out.println("\nMatrix 1");
		m.display(a,r,c);

		System.out.println("\nMatrix 2");
		m.display(b,r,c);

		System.out.println("\nSum");
		m.display(result,r,c);
		
	}
}
