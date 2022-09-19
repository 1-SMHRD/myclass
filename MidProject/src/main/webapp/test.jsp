<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<style>
div {
	border: 2px solid #000;
	width: 100px;
	height: 100px;
	text-align: center;
	line-height: 100px;
	font-weight: bold;
}

.box-main{
	float: left;
}

.box1 {
	background-color: red;
}

.box2 {
	background-color: yellow;
}

.box3 {
	background-color: green;
}
.box-sub{
	width: 100%;
	height: 50%;
	line-height: 50%
}
</style>
</head>
<body>
	<div class="box-main box1">box1</div>
	<div class="box-main box2">
		box2
		<div class="box-sub">top</div>
		<div class="box-sub">bottom</div>
	</div>
	<div class="box-main box3">box3</div>
</body>
</html>