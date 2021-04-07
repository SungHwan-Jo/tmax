<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="resources/css/login.css"> <!--외부 CSS 설정 -->
    <title>Login</title>
    <script>
        function check(){
            var idValue = document.getElementById("member_name").value;
            var pwValue = document.getElementById("member_pwd").value;
            var chkId = document.getElementById("chk_id");
            var chkPwd = document.getElementById("chk_pwd");
            if(idValue == null || idValue == ""){
                chkId.innerHTML = "아이디를 입력하세요";
                document.getElementById("member_name").focus();
                return;
            }else{
                chkId.innerHTML = "";
                document.getElementById("member_pwd").focus();
            }
            if(pwValue == null || pwValue == ""){
                chkPwd.innerHTML = "비밀번호를 입력하세요"
                return;
            }else{
                chkPwd.innerHTML = "";
                document.memberLogin.submit();
            }

        }

        function moveJoin(){
        	alert("구현 안함");
            //window.location.href = "Cagree.jsp";
        }
    </script>
</head>
<body>
    <form action="loginprocess.do" method="POST" id="memberLogin" name="memberLogin">
        <h1>Tmax</h1>
        <hr>
        <fieldset>
            <table>
                <tr>
                    <td colspan="2"><input type="text" id="member_name" name="member_name" placeholder="아이디 입력"><br><span id="chk_id"></span></td>
                    <td rowspan="5"><img src="resources/images/aaa.gif"> </td>
                </tr>
                <tr>
                    <td colspan="2"><input type="password" id="member_pwd" name="member_pwd" placeholder="비밀번호 입력"><br><span id="chk_pwd"></span> </td>
                </tr>
                <tr>
                    <td colspan="2"><input type="button" id="loginBtn" value="로그인" onclick="check()"></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="button" id="joinBtn" value="회원가입" onclick="moveJoin()"></td>
                </tr>
                <tr>
                    <td colspan="2" style="font-size: 14px"><input type="checkbox" id="checkLogin" value="로그인 상태 유지">로그인 상태 유지</td>
                </tr>
                <tr>
                    <td style="font-size: 12px; text-align: right">아이디 찾기</td>
                    <td style="font-size: 12px; text-align: left">비밀번호 찾기</td>
                </tr>

            </table>
        </fieldset>
    </form>

</body>
</html>