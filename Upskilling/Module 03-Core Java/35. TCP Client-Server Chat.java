Server
import java.net.*;
import java.io.*;

public class Server {

    public static void main(String[] args)
            throws Exception {

        ServerSocket server =
                new ServerSocket(5000);

        Socket socket =
                server.accept();

        BufferedReader br =
                new BufferedReader(
                        new InputStreamReader(
                                socket.getInputStream()));

        System.out.println(br.readLine());
    }
}   

Clinet
import java.net.*;
import java.io.*;

public class Client {

    public static void main(String[] args)
            throws Exception {

        Socket socket =
                new Socket("localhost", 5000);

        PrintWriter pw =
                new PrintWriter(
                        socket.getOutputStream(), true);

        pw.println("Hello Server");
    }
}