<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>Document</title>
  <style>
        * {
            margin: 0px;
            padding: 0px;
        }

        td {
            border: 1px solid red;
        }

        .t-head {
            text-align: center;
            width: 100%;
        }

        .t1 {
            width: 75px;
            text-align: center;
        }

        input[type="text"] {
            width: 250px;
        }
    </style>


<script>
// 스크립트
function check() {
            if (document.writeForm.writer.value == "") {
                console.log("이름을 입력하시오");
                document.writeForm.writer.focus();
                return false;
            }
            if (document.writeForm.subject.value == "") {
                console.log("subject 입력하시오");
                document.writeForm.subject.focus();
                return false;
            }
            if (document.writeForm.email.value == "") {
                console.log("이메일 입력하시오");
                document.writeForm.email.focus();
                return false;
            }
            if (document.writeForm.content.value == "") {
                console.log("content 입력하시오");
                document.writeForm.content.focus();
                return false;
            }
            if (document.writeForm.content.value == "") {
                console.log("content 입력하시오");
                document.writeForm.content.focus();
                return false;
            }
            if (document.writeForm.content.value == "") {
                console.log("content 입력하시오");
                document.writeForm.content.focus();
                return false;
            }
            document.writeForm.submit();
        }
 
</script>
</head>
<body>
<!-- 내용 -->

   <%-- <form name="writeForm" method="post" action="../ch14_model1_board/writeSave.jsp"> --%>
   <form name="writeForm" method="post" action="writeSave.jsp">
        <table id="tb">
            <tr>
                <td class="t-head" colspan="2">
                    게시판 글쓰기
                </td>
            </tr>

            <tr>
                <td class="t1">
                    글쓴이
                </td>
                <td class="t2">
                    <input type="text" name="writer" />
                </td>
            </tr>

            <tr>
                <td class="t1">
                    제목
                </td>
                <td class="t2">
                    <input type="text" name="subject" />
                </td>
            </tr>

            <tr>
                <td class="t1">
                    이메일
                </td>
                <td class="t2">
                    <input type="text" name="email" />
                </td>
            </tr>

            <tr>
                <td class="t1">
                    내용
                </td>
                <td class="t2">
                    <textarea  name="content" rows="10" cols="50"></textarea>
                </td>
            </tr>

            <tr>
                <td class="t1">
                    비번
                </td>
                <td class="t2">
                    <input type="password" name="pwd" />
                </td>
            </tr>
            
            <tr>
            <td><button type="submit">섶밋</button>
            </td>
            </tr>
        </table>
        
    </form>


</body>
 
</html>