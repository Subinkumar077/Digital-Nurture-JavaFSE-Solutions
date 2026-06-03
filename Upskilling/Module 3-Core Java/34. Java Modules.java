module-info.java (com.utils)
module com.utils {
    exports com.utils;
}
Utility Class
package com.utils;

public class Utility {
    public static void greet() {
        System.out.println("Hello");
    }
}
module-info.java (com.greetings)
module com.greetings {
    requires com.utils;
}
Main Class
import com.utils.Utility;

public class Main {
    public static void main(String[] args) {
        Utility.greet();
    }
}