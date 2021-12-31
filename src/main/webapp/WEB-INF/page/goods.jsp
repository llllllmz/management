<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>病人信息管理</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/png" href="assets/images/icon/favicon.ico">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/metisMenu.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/slicknav.min.css">
    <!-- amchart css -->
    <link rel="stylesheet" href="assets/css/export.css" type="text/css" media="all" />
    <!-- others css -->
    <link rel="stylesheet" href="assets/css/typography.css">
    <link rel="stylesheet" href="assets/css/default-css.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/responsive.css">
    <!-- modernizr css -->
    <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>
<div class="single-table" style="padding-top: 5px;">
    <div class="col-md-12 col-sm-12 clearfix">
        <div class="pull-left">
            <a href="${pageContext.request.contextPath}/goodsAddPage"><button type="button" class="btn btn-primary mb-3">入院手续</button></a>
        </div>
        <div class="search-box pull-right">
            <form action="${pageContext.request.contextPath}/goodsQuery">
                <input type="text" name="query" placeholder="搜索病人ID，姓名，病房号" value="${queryKeyWord}" required>
                <button type="submit"><i class="ti-search"></i></button>
            </form>
        </div>
    </div>
    <div class="table-responsive">

        <table class="table text-center" style="width:100%;">
            <thead class="text-uppercase bg-secondary">
            <tr class="text-white">
                <th>头像</th>
                <th>患者ID</th>
                <th>姓名</th>
                <th>病房号</th>
                <th>性别</th>
                <th>病床号</th>
                <th>操作</th>
                <th></th>

            </tr>
            </thead>
            <tbody>
            <c:forEach var="goods" items="${goodsList}">
            <tr>
                <td><img src="${pageContext.request.contextPath}/picture?filename=${goods.g_img}" style="height: 50px;width: 50px;"> </td>
                <td>${goods.g_id}</td>
                <td>${goods.g_name}</td>
                <td>${goods.g_price}</td>
                <td>${goods.g_firm}</td>
                <td>${goods.g_num}</td>
                <td><a href="${pageContext.request.contextPath}/goodsEditPage?g_id=${goods.g_id}&g_name=${goods.g_name}&g_firm=${goods.g_firm}&g_price=${goods.g_price}&g_num=${goods.g_num}">修改病人信息</a></td>
                <td><a href="${pageContext.request.contextPath}/goodsDelete?g_id=${goods.g_id}">出院</a></td>

            </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>


</body>
</html>
