package swsw;

import java.sql.*;

public class Test05_db_get {

    // select * from member where id =

    Connection conn = null;
    Statement stmt = null;
    PreparedStatement pstme = null;
    String sqlQuery = "select * from member where id ='";
    ResultSet rs;

    String driver = "oracle.jdbc.driver.OracleDriver";
    String user = "java00";
    String pwd = "q1w2e3";
    String url = "JDBC:oracle:thin:@localhost:1551:xe";

    String id;// 조회할 id
    private String name, gender, email, gradeno; // 값을 담는다

    public Test05_db_get(String id_input) {
        id = id_input;

        try {
            Class.forName(driver);
        } catch (Exception e) {
            System.out.println("1111");
        }

        try {
            conn = DriverManager.getConnection(url, user, pwd);
            stmt = conn.createStatement();
            sqlQuery = sqlQuery + id + "'";
            rs = stmt.executeQuery(sqlQuery);

            if (rs != null) {
                while (rs.next()) {
                    name = rs.getString("name");
                    gender = rs.getString("gender");
                    email = rs.getString("email");
                    gradeno = rs.getString("gradeno");
                }
            }

        } catch (Exception e) {
            System.out.println("2222");
            e.getStackTrace();

        } finally {
            if (conn != null) {
                try {
                    conn.close();
                    stmt.close();
                } catch (SQLException eSqlException) {
                    // sql 예외처리
                    eSqlException.printStackTrace();// 에러스택
                } // end try catch
            } // end if
        }

    }// cons end

    public String getData(int i) {

        String temp[] = { name, gender, email, gradeno };
        return temp[i];
    }

    // public static void main(String[] args) {
    // Test05_db_get tt = new Test05_db_get("admin");
    // for (int i = 0; i < 4; i++) {
    // System.out.println(tt.getData(i));
    // }

    // }

}