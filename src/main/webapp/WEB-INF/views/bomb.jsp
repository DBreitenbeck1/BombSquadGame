<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bomb</title>
</head>
<body onload="question(), myTimer = setInterval(CD, 1000)">

<p id = "countdown"></p>

<p id ="ex"></p>

<script>
var c = ${time};
document.getElementById("countdown").innerHTML= c;
function CD() {
	if(c>0){
	c = c-1;
	document.getElementById("countdown").innerHTML=c;
	} else if (c<=0){
		expl();
	}
	}

function add(){
	c+=${exTime};
}

function sub(){
	c-=${exTime};
}

function expl(){
	document.getElementById("ex").innerHTML="BOOM!";
}

function check(){
	var a = document.getElementById("answer").value;
	if (a==4){
		add();
	} else {
		sub();
	}
}

function question(){
	document.getElementById("q").innerHTML="2+2";
}

</script>

<button onClick = "add()">add</button>
<button onClick= "sub()">sub</button>


<input type="text" id="answer">
<button onClick = "check()">Submit</button>

<div >
<p id="q"></p>
</div>

</body>

</html>