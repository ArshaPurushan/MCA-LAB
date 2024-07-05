package Graphics;

interface TriangleInterface
{
    void area(int b,int h);
}
public class Triangle implements TriangleInterface
{
    public void area(int b,int h)
    {
        int area=(b*h)/2;
        System.out.println("\nArea of Triangle : "+area);
    }
}