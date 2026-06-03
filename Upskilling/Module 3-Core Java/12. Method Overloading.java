public class MethodOverloading {

    // Method for two integers
    public static int add(int a, int b) {
        return a + b;
    }

    // Method for two doubles
    public static double add(double a, double b) {
        return a + b;
    }

    // Method for three integers
    public static int add(int a, int b, int c) {
        return a + b + c;
    }

    public static void main(String[] args) {

        System.out.println("Sum of two integers: " + add(10, 20));
        System.out.println("Sum of two doubles: " + add(10.5, 20.7));
        System.out.println("Sum of three integers: " + add(10, 20, 30));
    }
}