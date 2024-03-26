import java.util.Scanner;
class ScannerExample{
	public static void main(String args[]){
		try{
			Scanner s=new Scanner(System.in);
			System.out.print("Enter your name: ");
			String n	=s.nextLine();
//	String n=s.next();
			
			System.out.print("Enter Your roll NO : ");
		  int r = s.nextInt();
		  
		  System.out.println("Name is "+n);
		  System.out.println("Roll.no "+r);
		  
			s.close();
		}
		catch(Exception e){
			System.out.print(e);
		}
	}
}
