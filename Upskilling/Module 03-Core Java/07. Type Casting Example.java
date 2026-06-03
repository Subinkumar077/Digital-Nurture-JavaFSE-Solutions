public class TypeCastingExample {

    public static void main(String[] args) {

        // Double to Int (Narrowing Casting)
        double decimalNumber = 45.78;
        int integerNumber = (int) decimalNumber;

        System.out.println("Double value: " + decimalNumber);
        System.out.println("After casting to int: " + integerNumber);

        // Int to Double (Widening Casting)
        int num = 25;
        double doubleNum = (double) num;

        System.out.println("Int value: " + num);
        System.out.println("After casting to double: " + doubleNum);
    }
}