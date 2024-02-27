//Simple java program
import java.util.*;
class Student{

	
	public static void main(String args[]){
		Scanner sc= new Scanner(System.in);
		
		System.out.print("Enter Your roll NO : ");
		int RollNo = sc.nextInt();
		sc.nextLine(); 
		
		System.out.print("Enter your name : ");
		String Name = sc.nextLine();

		
		System.out.print("Enter Your Course Name  : ");
		String Course = sc.nextLine();
		
		System.out.print("Enter Your Mark : ");
		Double Mark = sc.nextDouble();
		
		
		System.out.println("you are in MCA \n");
		System.out.println("RollNo: "+RollNo);
		System.out.println("Name: "+Name);
		System.out.println("Course: "+Course);
		System.out.println("Mark: "+Mark);
		
		
	}
}
