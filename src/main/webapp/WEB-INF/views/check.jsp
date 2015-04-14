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

<title>任务列表</title>

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
					<li><a href="upload">创建任务</a></li>
            		<li class="active"><a href="check">查看任务</a></li>
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

    <div class="container">

      <form class="form-signin" method="POST" action="check">
        <h2 class="form-signin-heading">查询任务执行状态</h2>
        <label for="inputSubmitId" class="sr-only">Submit ID</label>
        <input type="text" name="submitId" id="inputSubmitId" class="form-control" placeholder="请输入提交编号" required autofocus>
        <button class="btn btn-lg btn-primary btn-block" type="submit">查询</button>
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
