import java.util.Scanner;
import Graphics.Circle;
import Graphics.Rectangle;
import Graphics.Square;
import Graphics.Triangle;

class Question12
{
    public static void main(String args[])
    {
        Scanner s=new Scanner(System.in);
        int ch;
        do
        {
            System.out.println("\n---Find area...!---\n1.Rectangle\n2.Triangle\n3.Square\n4.Circle\n5.Exit\nEnter choice\n");
            ch=s.nextInt();

            if(ch==1)
            {
                Rectangle r=new Rectangle();
                System.out.println("Enter Length");
                int l=s.nextInt();
                System.out.println("Enter Breadth");
                int b=s.nextInt();
                r.area(l,b);
            }
            else if(ch==2)
            {
                Triangle t=new Triangle();
                System.out.println("Enter Base");
                int b=s.nextInt();
                System.out.println("Enter Height");
                int h=s.nextInt();
                t.area(b,h);
            }
            else if(ch==3)
            {
                Square sq=new Square();
                System.out.println("Enter Side");
                int a=s.nextInt();
                sq.area(a);
            }
            else if(ch==4)
            {
                Circle c=new Circle();
                System.out.println("Enter Radius");
                int r=s.nextInt();
                c.area(r);
            }
            else if(ch==5)
            {
                System.out.println("Exited");
                break;
            }
            else
            {
                System.out.println("Invalid Choice");
            }
        }while(true);
    }
}
