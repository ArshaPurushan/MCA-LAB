import java.util.Scanner;
class ScannerExample{
	public static void main(String args[]){
		try{
			Scanner s=new Scanner(System.in);
			System.out.print("Enter your name: ");
			String name=s.nextLine();
			String n=s.next();
			
			System.out.print("Enter Your roll NO : ");
		  int r = s.nextInt();
		  
		  System.out.print("Name is "+n);
		  System.out.print("Roll.no "+r);
		  
			s.close();
		}
		catch(Exception e){
			system.out.print(e);
		}
	}
