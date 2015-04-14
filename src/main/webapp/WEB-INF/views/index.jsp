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

<title>爬虫系统</title>

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
					<li class="active"><a href="/fetch">首页</a></li>
					<li><a href="upload">创建任务</a></li>
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
	<br>
	<br>

	<!-- Marketing messaging and featurettes
    ================================================== -->
	<!-- Wrap the rest of the page in another container to center all the content. -->

	<div class="container marketing">

		<!-- Three columns of text below the carousel -->
		<div class="row">
			<div class="col-lg-4">
				<img class="img-circle" src="resources/static/img/weibo_logo_1.png"
					alt="Generic placeholder image" width="140" height="140">
				<h2>微博内容</h2>
				<p>此功能基于微博高级搜索功能，可指定关键词、地区、时间段，爬取相应的微博内容。</p>
				<p>
					<a class="btn btn-default" href="upload" role="button">进入
						&raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-4">
				<img class="img-circle"
					src="resources/static/img/baidu_news_logo.png"
					alt="Generic placeholder image" width="140" height="140">
				<h2>百度新闻</h2>
				<p>此功能基于百度新闻高级搜索。（此功能正在开发中­）­</p>
				<p>
					<a class="btn btn-default" href="#" role="button">进入 &raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-4">
				<img class="img-circle" src="resources/static/img/wechat_logo.jpg"
					alt="Generic placeholder image" width="140" height="140">
				<h2>微信爬取</h2>
				<p>此功能可抓取指定关键词下的公众号文章，及其阅读数、点赞数。（此功能正在开发中­）­</p>
				<p>
					<a class="btn btn-default" href="#" role="button">进入 &raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
		</div>
		<!-- /.row -->

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
