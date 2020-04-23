package swsw;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/hello2")
public class Test02_Servlet extends HttpServlet {

    @Override
    public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String a1 = "<html><head><title>hello servlet!!</title> </head>";
        String a2 = "<body>";
        String a4 = "</body></html>";

        // localhost:9000/hello2?cnt=3
        String cnt_string = request.getParameter("cnt");
        int cnt = Integer.parseInt(cnt_string);
        cnt = cnt % 6 + 2;

        System.out.println("syso  Hello Servlet!!!");
        // 브라우저 X >> 서버 콘솔출력

        response.setCharacterEncoding("UTF-8");
        // 자, 이제 응답의 인코딩은 UTF8이다
        response.setContentType("text/html; charset=UTF-8");
        // 브라우저. 너도 이걸 읽을때 html + UTF-8로 읽도록해

        PrintWriter out = response.getWriter();

        out.println(a1);// <html><head><title>hello servlet!!</title> </head>
        out.println(a2);// <body>

        for (int i = 1; i < cnt; i++) {
            out.printf("<h%d> 안녕.222.하세여%d!! </h%d><br>", i, i, i);
        }
        out.println(a4);// </body></html>

        out.close();

    }

}