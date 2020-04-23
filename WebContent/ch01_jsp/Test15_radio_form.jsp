<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<%@ page import = "java.sql.*"%>
<%!
//변수 선언
 
%>
 
<%
//자바 구문
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>Document</title>
<style>
 * { margin: 0px;   padding: 0px;  } 
 *{
          font-size: larger;
        }
 
</style>
<script>
// 스크립트
 
 
</script>
</head>
 <body>
    <form method="post" action="Test15_radio_pro.jsp">
       이름:<input type="text" name="name" size="30" placeholder="이름 입력"><br>
       주소:<input type="text" name="addr" size="50" placeholder="주소 입력"><br>
       <br>
       
       당신이 좋아하는 과일을 선택하세요<br>
       <input type="radio" name="과일" value="사과">사과<br>
       <input type="radio" name="과일" value="포도">포도<br>
       <input type="radio" name="과일" value="수박">수박<br>
       <input type="radio" name="과일" value="메론">메론<br>
       <input type="radio" name="과일" value="딸기">딸기<br>
       <input type="radio" name="과일" value="망고">망고<br>
       <br>
       
       좋아하는 운동은?<br>
       <input type="radio" name="운동" value="축구">축구<br>
       <input type="radio" name="운동" value="야구">야구<br>
       <input type="radio" name="운동" value="농구">농구<br>
       <input type="radio" name="운동" value="볼링">볼링<br>
       <input type="radio" name="운동" value="수상스키">수상스키<br>
       <input type="radio" name="운동" value="자전거타기">자전거타기<br>
       <br>
       
       취미는?<br>
       <input type="radio" name="취미" value="코딩">코딩<br>
       <input type="radio" name="취미" value="게임">게임<br>
       <input type="radio" name="취미" value="헬스">헬스<br>
       <input type="radio" name="취미" value="독서">독서<br>
       <input type="radio" name="취미" value="여행">여행<br>
       <input type="radio" name="취미" value="영화시청">영화시청<br>
       <br>
       <input type="submit" value="전송">
       <input type="reset" value="취소">
       
    </form>
  </body>

 
</html>