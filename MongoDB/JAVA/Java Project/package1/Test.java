package package1;

public class Test {
    public static void main(String[] args){
        System.out.println("Keep quite");
        try{
            Class.forName("org.h2.Driver");
        }
        catch(Exception e) {
            e.printStackTrace();
            System.out.println("connection check it");
        }
    }
}   