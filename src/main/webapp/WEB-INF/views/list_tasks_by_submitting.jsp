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

	<div class="container marketing">



		<table class="table table-hover">
			<thead>
				<tr>
					<th>关键词</th>
					<th>省</th>
					<th>市</th>
					<th>时间起</th>
					<th>时间止</th>
					<th>间隔（小时）</th>
					<th scope="row">任务状态</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${not empty items}">

					<c:forEach var="item" items="${items}">
						<tr>
							<td>${item['keyword']}</td>
							<td>${item['province']}</td>
							<td>${item['city']}</td>
							<td>${item['start_time']}</td>
							<td>${item['end_time']}</td>
							<td>${item['time_interval']}</td>
							<c:set var="task_status" value="${item['task_status']}" />
							<c:choose>
								<c:when test="${task_status eq '已完成'}">
									<th scope="row"><a href="/downloads/fetching-output/${item['output_file_name']}">${item['task_status']}</a></th>
								</c:when>
								<c:otherwise>
									<th scope="row">${item['task_status']}</th>
								</c:otherwise>
							</c:choose>
						</tr>
					</c:forEach>

				</c:if>
			</tbody>
		</table>

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
