package Graphics;

interface SquareInterface
{
    void area(int a);
}
public class Square implements SquareInterface
{
    public void area(int a)
    {
        System.out.println("\nArea of Square : "+(a*a));
    }
}