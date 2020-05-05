<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home</title>
</head>
<body>
<h2>Bomb Squad</h2>

<p>You've found a bomb with seconds to spare! Can you disarm it?</p>

<form action ="/instructions">
<p><input type="radio" id="easy" name = "dif" value="1" checked="checked">
<label for="easy">Easy</label>
</p>
<p> </p>
<input type="radio" id="medium" name = "dif" value="2">
<label for="medium">Medium</label><br>
</p>
<p>
<input type="radio" id="hard" name = "dif" value="3">
<label for="hard">Hard</label><br></p>

<button type="submit">Proceed</button>
</form>

</body>
</html>