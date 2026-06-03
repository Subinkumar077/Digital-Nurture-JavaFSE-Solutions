import java.lang.reflect.Method;

class Test {

    public void greet() {
        System.out.println("Hello");
    }
}

public class ReflectionExample {

    public static void main(String[] args)
            throws Exception {

        Class<?> cls =
                Class.forName("Test");

        Object obj =
                cls.getDeclaredConstructor()
                   .newInstance();

        Method[] methods =
                cls.getDeclaredMethods();

        for (Method m : methods) {
            System.out.println(m.getName());
            m.invoke(obj);
        }
    }
}