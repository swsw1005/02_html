package swsw;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/hello1")
public class Test01_Servlet extends HttpServlet {

    @Override
    public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String a1 = "<html><head><title>hello servlet!!</title> </head>";
        String a2 = "<body>";
        String a4 = "</body></html>";

        System.out.println("syso  Hello Servlet!!!");
        // 브라우저 X >> 서버 콘솔출력

        response.setCharacterEncoding("UTF-8");
        // 자, 이제 응답의 인코딩은 UTF8이다
        response.setContentType("text/html; charset=UTF-8");
        // 브라우저. 너도 이걸 읽을때 html + UTF-8로 읽도록해

        PrintWriter out = response.getWriter();

        out.println(a1);
        out.println(a2);
        for (int i = 1; i < 7; i++) {
            out.printf("<h%d> 안녕..하세여%d!! </h%d><br>", i, i, i);
        }
        out.println(a4);

        out.close();

        // printwriter
        // 1. 자동flush X
        // 2. 닫아야 한다.
    }

}