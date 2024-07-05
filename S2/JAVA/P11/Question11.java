import java.util.Scanner;

interface Measurement
{
    void area();
    void perimeter();
    void input();
}

class Circle implements Measurement
{
    int r;

    public void input()
    {Scanner s=new Scanner(System.in);
        System.out.println("Enter Radius");
        r=s.nextInt();
        area();
        perimeter();
    }
    public void area()
    {
        System.out.println("\nArea of Circle : "+3.14*r*r);
    }
    public void perimeter()
    {
        System.out.println("Perimeter of Circle : "+2*3.14*r);
    }
}

class Rectangle implements Measurement
{
    int l,b;

    public void input()
    {Scanner s=new Scanner(System.in);
        System.out.println("Enter Length");
        l=s.nextInt();
        System.out.println("Enter Breadth");
        b=s.nextInt();
        area();
        perimeter();
    }
    public void area()
    {
        System.out.println("\nArea of Rectangle : "+l*b);
    }
    public void perimeter()
    {
        System.out.println("Perimeter of Rectangle : "+2*(l+b));
    }
}

class Question11
{
    public static void main(String args[])
    {
        Circle c=new Circle();
        Rectangle r=new Rectangle();

        Scanner s=new Scanner(System.in);
        int ch;

        do
        {
            System.out.println("\n1.Circle\n2.Rectangle\n3.Exit\nEnter your choice");
            ch=s.nextInt();

            if(ch==1)
            {
                c.input();
            }
            else if(ch==2)
            {
                r.input();
            }
            else if(ch==3)
            {
                System.out.println("\nExited");
                break;
            }
            else
            {
                System.out.println("\nInvalid Choice");
            }
        }while(ch!=0);
    }
}
