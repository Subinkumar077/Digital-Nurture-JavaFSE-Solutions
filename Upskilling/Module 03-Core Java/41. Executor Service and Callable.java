import java.util.concurrent.*;

public class ExecutorExample {

    public static void main(String[] args)
            throws Exception {

        ExecutorService executor =
                Executors.newFixedThreadPool(3);

        Callable<String> task1 =
                () -> "Task 1 Completed";

        Callable<String> task2 =
                () -> "Task 2 Completed";

        Future<String> f1 =
                executor.submit(task1);

        Future<String> f2 =
                executor.submit(task2);

        System.out.println(f1.get());
        System.out.println(f2.get());

        executor.shutdown();
    }
}