import java.io.*;
import java.util.*;

class Question16
{
    public static void main(String args[]) throws IOException
    {
        Scanner s1=new Scanner(System.in);
        InputStreamReader r=new InputStreamReader(System.in);
        BufferedReader br=new BufferedReader(r);
        
        FileWriter f=new FileWriter("input.txt");
        BufferedWriter bw=new BufferedWriter(f);
        System.out.println("Enter Numnber of lines");
        int n=s1.nextInt();
        System.out.println("Enter Content(Enter end to exit)");
        String s;
        int i=0;
        do{
            if(i==n)
                break;
            s=br.readLine();
            bw.write(s);
            bw.write("\n");
            i++;
        }while(true);
        bw.close();

        FileReader fr=new FileReader("input.txt");
        BufferedReader bfr=new BufferedReader(fr);

        String sr;
        System.out.println("\n----The file is----\n");
        while((sr=bfr.readLine())!=null)
        {
            System.out.println(sr);
        }
        bfr.close();

    }
}
