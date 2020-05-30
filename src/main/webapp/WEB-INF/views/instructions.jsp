<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Good Luck!</h2>

<p>The bomb can only be disarmed by correctly answer ${ ques } problems in a row.</p>
<p>You have ${time } seconds</p>
<p>Each correct answer will gain you ${exTime} more seconds. Each wrong answer will lose you ${exTime } seconds.</p>
<p>We're all counting on you!</p>

<form action ="/bomb" > 
<input type="hidden" name ="time" value="${time}">
<input type="hidden" name ="exTime" value="${exTime}">
<input type="hidden" name ="ques" value="${ques}">
<button type = submit>Begin</button>
 </form>

</body>
</html>