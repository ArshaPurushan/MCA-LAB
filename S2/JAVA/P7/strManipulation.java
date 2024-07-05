class strManipulation
{
    public static void main(String args[])
    {
        String s1="Hello Welcome !";
        String s2="Hello";
        String s3="HELLO";
        System.out.println("\nString s1 = "+s1+"\nString s2 = "+s2+"\nString s3 = "+s3+"\n\n");

        System.out.println("Length of s1 : "+s1.length()); //length of string
        System.out.println("Character at index 4 of s1 : "+s1.charAt(4)); //Single Character Extraction
        System.out.println("s2 equals s3 : "+s2.equals(s3));
        System.out.println("s2 equals s3 (Ignore Case) : "+s2.equalsIgnoreCase(s3));
        System.out.println("First index of l in s1 : "+s1.indexOf("l"));
        System.out.println("Last index of l in s1 : "+s1.lastIndexOf("l"));
        System.out.println("substring from  s1 : "+s1.substring(3,9));
        System.out.println("Concat s2 and world : "+s2.concat(" World"));
        System.out.println("Replace L in s3 with W : "+s3.replace("L","W"));
        System.out.println("s1 to uppercase : "+s1.toUpperCase());
        System.out.println("s3 to lowercase : "+s3.toLowerCase());
    }
}
