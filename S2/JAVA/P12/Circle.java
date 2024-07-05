package Graphics;

interface CircleInterface
{
    void area(int r);
}
public class Circle implements CircleInterface
{
    public void area(int r)
    {
        System.out.println("\nArea of Circle : "+(3.14*r*r));
    }
}