package swsw;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/hello4")
public class Test04_post extends HttpServlet {

    @Override
    public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        response.setCharacterEncoding("UTF-8");
        // 나, servlet은 utf-8이다
        response.setContentType("text/html; charset=UTF-8");
        // 브라우저, 너는 나의 응답을 받아들인다, HTML + UTF-8로서
        PrintWriter out = response.getWriter();
        // out이라는 이름으로, 응답을 출력하는 writer 객체 이용하겠다

        String a1 = "<html><head><title>hello servlet!!</title> </head>";
        String a2 = "<body>";
        String a4 = "</body></html>";

        String id, pw;

        try {
            id = request.getParameter("id");
        } catch (Exception e) {
            id = "";
        }
        try {
            pw = request.getParameter("pw");
        } catch (Exception e) {
            pw = "";
        }

        String a3 = "<hr><a>ID</a> <a> " + id + "</a><br><a>PW</a> <a>" + pw + "</a><br><hr>";

        out.println(a1);
        out.println(a2);
        out.println(a3);
        out.println(a4);

    }

}