package swsw;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/hello5")
public class Test05_DB extends HttpServlet {

    @Override
    public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        response.setCharacterEncoding("UTF-8");
        // 나, servlet은 utf-8이다
        response.setContentType("text/html; charset=UTF-8");
        // 브라우저, 너는 나의 응답을 받아들인다, HTML + UTF-8로서
        PrintWriter out = response.getWriter();
        // out이라는 이름으로, 응답을 출력하는 writer 객체 이용하겠다

        String a1 = "<html><head><title>hello servlet!!</title> </head>";
        String a2 = "<body> <p>입력된 id의 결과는</p> ";
        String a3 = "<hr>";
        String a4 = "</body></html>";
        String id;

        try {
            id = request.getParameter("id");
            Test05_db_get td5 = new Test05_db_get(id);

            a3 = a3 + "<a>name</a> <a> " + td5.getData(0) + "</a><br>";
            a3 = a3 + "<a>gender</a> <a> " + td5.getData(1) + "</a><br>";
            a3 = a3 + "<a>email</a> <a> " + td5.getData(2) + "</a><br>";
            a3 = a3 + "<a>gradeno</a> <a> " + td5.getData(3) + "</a><br>";

        } catch (Exception e) {
            id = "";
        }

        out.println(a1);
        out.println(a2);
        out.println(a3);
        out.println(a4);

    }

}