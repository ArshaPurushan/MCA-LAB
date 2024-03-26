//Simple java program
import java.util.*;
class Student{

	
	public static void main(String args[]){
		Scanner sc= new Scanner(System.in);
		
		System.out.print("Enter Your roll NO : ");
		int RollNo = sc.nextInt();
		//sc.nextLine(); 
		
		System.out.print("Enter your name : ");
		//String Name = sc.nextLine();
		String Name = sc.next();

		
		System.out.print("Enter Your Course Name  : ");
		//String Course = sc.nextLine();
		String Course = sc.next();
		
		System.out.print("Enter Your Mark : ");
		Double Mark = sc.nextDouble();
		
		
		System.out.println("you are in MCA \n");
		System.out.println("RollNo : \t"+RollNo);
		System.out.println("Name : \t"+Name);
		System.out.println("Course : \t"+Course);
		System.out.println("Mark : \t"+Mark);
		
		
	}
}
