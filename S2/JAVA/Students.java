//constructor

class Std
{
	//int rn;
	//String name;
	//double mark;
	
	Std(int a,String b)
	{
		//rn=12;
		//name="diya";
		 int rn=a;
		 String name=b;
		 
		 System.out.println("Rollno: "+rn);
		 System.out.println("Name: "+name);
	}
	Std(int a,String b,double m)
	{
		 int rn=a;
		 String name=b;
		 double mark=m;
		 
		 System.out.println("Rollno: "+rn);
		 System.out.println("Name: "+name);
		 System.out.println("Mark: "+mark);
	}
	
/*	void display()
	{
		System.out.println("Rollno: "+rn);
		System.out.println("Name: "+name);
		System.out.println("Mark: "+mark);
	}*/

}	
class Students
{
	public static void main(String args[])
	{
		Std s=new Std(15,"ria");
		Std st=new Std(16,"dia",40);
		//s.display();
		//st.display();
	}
}
