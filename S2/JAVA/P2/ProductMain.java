//Create three objects of the class and find the product having the lowest price

import java.util.Scanner;
class  Product
{
	int pcode;
	String pname;
	float price;
	void get()
	{
		Scanner s=new Scanner(System.in);
		System.out.print("enter the pcode:");
		pcode=s.nextInt();
		System.out.print("enter the pname:");
		pname=s.next();
		System.out.print("enter the price:");
		price=s.nextFloat();
	}
	void display()
	{
		System.out.println("\nproduct code:"+pcode);
		System.out.println("product name:"+pname);
		System.out.println("price:"+price);
	}
}
class ProductMain
{
	public static  void main(String arg[])
	{
		Product p1=new Product();
		Product p2=new Product();
		Product p3=new Product();
		p1.get();
		p2.get();
		p3.get();
		p1.display();
		p2.display();
		p3.display();
		System.out.print("product with lowest price:");	
		if (p1.price<=p2.price && p1.price<=p3.price)
			System.out.print(p1.pname);	
		else if(p2.price<=p1.price && p2.price<=p3.price)
			System.out.print(p2.pname);	
		else
			System.out.print(p3.pname);		
	}
}
