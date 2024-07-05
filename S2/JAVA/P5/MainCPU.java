class CPU
{
	int price;

	//constructor
	CPU(int price)
	{
		this.price=price;
	}

	class Processor
	{
		int no_of_cores;
		String manufacturer;

		//Constructor
		Processor(int a,String b)
		{
			no_of_cores=a;
			manufacturer=b;
		}
		
		void processorDisplay()
		{
			System.out.println("Price \t\t\t: "+price+" Rs.");
			System.out.println("Number of Cores \t: "+no_of_cores);
			System.out.println("Processor Manufacturer  : "+manufacturer);
		}
	}

	static class RAM
	{
		int memory;
		String manufacturer;

		//Constructor
		RAM(int a,String b)
		{
			memory=a;
			manufacturer=b;
		}
		
		void RAMDisplay()
		{
			System.out.println("Memory \t\t\t: "+ memory +" GB");
			System.out.println("RAM Manufacturer \t: "+manufacturer);
		}
	}
}

class MainCPU
{
	public static void main(String args[])
	{
		
		//CPU class Object
		CPU c=new CPU(5000);

		//processsor object creation
		CPU.Processor p=c.new Processor(4,"Intel");

		//RAM object creation
		CPU.RAM r=new CPU.RAM(8,"Kingston");
		
		System.out.println("\n-------------Details-------------\n");
		p.processorDisplay();
		r.RAMDisplay();


	}
}
