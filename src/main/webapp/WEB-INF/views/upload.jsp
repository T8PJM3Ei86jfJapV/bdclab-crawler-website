<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-Hans">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="resources/static/bootstrap-3.3.4/favicon.ico">

<title>创建任务</title>

<!-- Bootstrap core CSS -->
<link href="resources/static/bootstrap-3.3.4/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="resources/static/bootstrap-3.3.4/docs/assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script
	src="resources/static/bootstrap-3.3.4/docs/assets/js/ie-emulation-modes-warning.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<!-- Custom styles for this template -->
<link href="resources/static/css/carousel.css" rel="stylesheet">
</head>
<!-- NAVBAR
================================================== -->
<body>
	<!-- Fixed navbar -->
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand">BDClab自动化爬虫系统</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="/fetch">首页</a></li>
					<li class="active"><a href="upload">创建任务</a></li>
					<li><a href="check">查看任务</a></li>
				</ul>

			</div>
			<!--/.nav-collapse -->
		</div>
	</nav>

	<br>
	<br>
	<br>
	<br>

	<!-- Marketing messaging and featurettes
    ================================================== -->
	<!-- Wrap the rest of the page in another container to center all the content. -->

	<div class="container marketing">

		<div class="alert alert-warning alert-dismissible" role="alert">
			<button type="button" class="close" data-dismiss="alert"
				aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
			<span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
			<span class="sr-only">Error:</span> 请认真阅读说明，严格按照文件编码及格式要求提交。
		</div>

		<!-- 
		<form method="POST" action="upload" enctype="multipart/form-data">
			选择文件：<input type="file" name="file"><br /> 项目名称：<input
				type="text" name="name"> <br /> <br />
			<button type="submit" value="Upload"
				class="btn btn-default btn-lg btn-block">提交</button>
		</form>
 		-->
 
		<form class="form-horizontal" method="POST" action="upload"
			enctype="multipart/form-data">
			<div class="form-group">
				<label for="inputFile" class="col-sm-2 control-label">选择文件：</label>
				<div class="col-sm-10">
					<input type="file" name="file" id="inputFile">
				</div>
			</div>
			<div class="form-group">
				<label for="inputTaskName" class="col-sm-2 control-label">项目名称：</label>
				<div class="col-sm-10">
					<input type="text" name="name" class="form-control" id="inputTaskName"
						placeholder="可留空">
				</div>
			</div>
			<div class="form-group">
				<label for="inputToken" class="col-sm-2 control-label">Token：</label>
				<div class="col-sm-10">
					<input type="text" name="token" class="form-control" id="inputToken"
						placeholder="请通过后台获取口令">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<div class="checkbox">
						<label> <input type="checkbox"> 加急处理
						</label>
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" value="Upload" class="btn btn-default">提交</button>
				</div>
			</div>
		</form>

		<!-- Usage as a class -->
		<div class="clearfix"></div>
		<hr>

		<!-- FOOTER -->
		<footer>
			<p class="text-center">&copy; 2015 中山大学大数据传播实验室</p>
		</footer>

	</div>
	<!-- /.container -->

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="resources/static/jquery.min.js"></script>
	<script src="resources/static/bootstrap-3.3.4/dist/js/bootstrap.min.js"></script>
	<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
	<script
		src="resources/static/bootstrap-3.3.4/docs/assets/js/vendor/holder.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script
		src="resources/static/bootstrap-3.3.4/docs/assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
