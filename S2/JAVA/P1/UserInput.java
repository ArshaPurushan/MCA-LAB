//Program to create static and non-static method

import java.util.Scanner;
class UserInput
{
	int rollno;
	String name;
	float mark;
	
	void show()
	{
		System.out.println("\nnon static method");
		System.out.println("****Student Details****");
		System.out.println("Name: "+name);
		System.out.println("Roll.no: "+rollno);
		System.out.println("Mark :"+mark);
	}
	static void Show()
	{
	System.out.println("\nStatic Method");
	}
	public static void main(String args[])
	{
	try{
	
		Scanner s=new Scanner(System.in);
		UserInput u=new UserInput();
		
		System.out.print("Enter Your roll NO : ");
		u.rollno = s.nextInt();
		s.nextLine(); 
		
		System.out.print("Enter your name : ");
		u.name = s.next();
		
		System.out.print("Enter your mark : ");
		u.mark = s.nextFloat();
		u.show();
		Show();
	}
	catch(Exception e){
			System.out.print(e);
		}
}
}
