import java.io.*;
class Question17
 {
    public static void main(String arg[]) throws IOException
    {
        FileReader fr=new FileReader("integers.txt");
        BufferedReader br=new BufferedReader(fr);

        FileWriter fw1=new FileWriter("even.txt");
        BufferedWriter bw1=new BufferedWriter(fw1);

        FileWriter fw2=new FileWriter("odd.txt");
        BufferedWriter bw2=new BufferedWriter(fw2);

        String s;
        int n;
        while((s=br.readLine())!=null)
        {
            n=Integer.parseInt(s);
            if(n%2==0)
            {
                bw1.write(s);
                bw1.write("\n");
            }
            else
            {
                bw2.write(s);
                bw2.write("\n");
            }
        }
        bw1.close();
        bw2.close();
        
    }
}