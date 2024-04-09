import java.util.Scanner;
class Number
{
	int r,i;
	Scanner s = new Scanner(System.in);
 
	Number()
	{
		System.out.println("Enter Real Number:");
		r = s.nextInt();
		System.out.println("\nEnter Imaginary Number:");
		i =s.nextInt();
	 }
 
	Number(int a, int b)
	{
		r=a;
	 	i=b;
	 }
	void show(){
		System.out.println("Complex number: "+r+"+"+i+"i");
	}
 
	static void add(Number a,Number b)
	{
 
		System.out.println("Result: "+(a.r+b.r)+"+"+(a.i+b.i)+"i");
	}
 
}
 
class complex
{
	public static void main(String args[])
	{
		Number n1 = new Number();
		Number n2 = new Number(2,4);
		n1.show();
		n2.show();
 
 
		Number.add(n1,n2);
 
	} 
}
