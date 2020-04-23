<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
tr {
   line-height: 30px;
}
</style>
<script type="text/javascript">
   function check(){
      //글쓴이 입력 여부 확인
      if(document.writeForm.writer.value==""){
         alert("이름을 입력하세요");
         document.writeForm.writer.focus();
         return false;
      }
      
      //글제목 입력 여부 확인
      if(document.writeForm.subject.value==""){
            alert("글제목을 입력하세요")
            document.writeForm.subject.focus();
            return false;
        }
        
      //이메일 입력 여부 확인
      if(document.writeForm.email.value==""){
            alert("이메일을 입력하세요")
            document.writeForm.email.focus();
            return false;
        }

      //글내용 입력 여부 확인
      if(document.writeForm.content.value==""){
            alert("글내용을 입력하세요")
            document.writeForm.content.focus();
            return false;
        }

        //비밀번호 입력 여부 확인
        if(document.writeForm.pwd.value==""){
            alert("비밀번호를 입력하세요");
            document.writeForm.pwd.focus();
            return false;
        }
        document.writeForm.submit(); 
        // submit() -> form 안의 내용을 서버로 전송 -> WriteSave.jsp

   }//check end
</script>
</head>
<body>
  <form name="writeForm" method="post" action="../ch14_model1_board/writeSave.jsp">
    
    <table border="1" align="center" width="70%">
     <tr>
       <td colspan="2">
         <h2 align="center">(^^)게시판 글쓰기(^^)</h2>
       </td>
     </tr>
     
     <tr>
       <td>이름</td>
       <td><input type="text" name="writer" id="writer" size="30"></td>
     </tr>
     
     <tr>
       <td>글제목</td>
       <td><input type="text" name="subject" size="40"></td>
     </tr>
     
     <tr>
       <td>이메일</td>
       <td><input type="text" name="email" size="40"></td>
     </tr>
     
     <tr>
       <td>글내용</td>
       <td><Textarea name="content" rows="10" cols="50"></Textarea> 
       
       </td>
     </tr>
     
     <tr>
       <td>비밀번호</td>
       <td><input type="password" name="pwd" size="20"></td>
     </tr>
     
     <tr>
       <td colspan="2" align="center">
         <input type="button" value="글쓰기" onclick="javaScript:check()">
         <input type="button" value="취소" onclick="history.back()">  
         <!-- history.back() == history.go(-1) : 이전으로  -->
       </td>
     </tr>
    </table>
  </form>
</body>
</html>