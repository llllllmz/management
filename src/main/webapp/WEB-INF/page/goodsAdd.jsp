<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>入院手续</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/png" href="assets/images/icon/favicon.ico">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/themifby-icons.css">
    <link rel="stylesheet" href="assets/css/metisMenu.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/slicknav.min.css">
    <!-- amchart css -->
    <link rel="stylesheet" href="assets/css/export.css" type="text/css" media="all"/>
    <!-- others css -->
    <link rel="stylesheet" href="assets/css/typography.css">
    <link rel="stylesheet" href="assets/css/default-css.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/responsive.css">
    <!-- modernizr css -->
    <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>
<form action="${pageContext.request.contextPath}/goodsAdd" onsubmit="return checkForm()" method="post" enctype="multipart/form-data">
    <div class="card-body" style="width: 488px;">
        <h4 class="header-title">入院手续</h4>

        <div class="form-group">
            <label for="gname" class="col-form-label">姓名</label>
            <input class="form-control" type="text" id="gname" name="g_name">
        </div>
        <div class="form-group">
            <label for="gprice" class="col-form-label">病房号</label>
            <input class="form-control" type="number" id="gprice" name="g_price">
        </div>
        <div class="form-group">
            <label for="gfirm" class="col-form-label">性别</label>
            <input class="form-control" type="text" id="gfirm" name="g_firm">
        </div>
        <div class="form-group">
            <label for="gnum" class="col-form-label">病床号</label>
            <input class="form-control" type="number" id="gnum" name="g_num">
        </div>
        <br>
        <div class="custom-file">
            <input type="file" class="custom-file-input" id="gimg" name="upGoodsFile"
                   onchange="document.getElementById('lable-text').innerHTML = this.value">
            <label class="custom-file-label" for="gimg" id="lable-text">选择头像</label>
        </div>
        <br>
        <br>
        <p style="color: red;" id="msg">${msg}</p>
    </div>
    <button type="submit" class="btn btn-primary mt-4 pr-4 pl-4">提交</button>

</form>
<a href="javascript:history.back(-1)">
    <button class="btn btn-primary mt-4 pr-4 pl-4">返回</button>
</a>
</body>

<script>

    function checkForm() {
        var gname = document.getElementById("gname");
        var gprice = document.getElementById("gprice");
        var gfirm = document.getElementById("gfirm");
        var gimg = document.getElementById("gimg");
        var gnum = document.getElementById("gnum");
        var msg = document.getElementById("msg");
        var reg = /^\s*$/;
        if (reg.test(gname.value)) {
            msg.innerHTML = "请填写姓名！"
            return false;

        } else if (reg.test(gprice.value)) {
            msg.innerHTML = "请填写病床号！"
            return false;
        }else if (reg.test(gfirm.value)) {
            msg.innerHTML = "请填写性别！"
            return false;
        } else if (reg.test(gnum.value)) {
            msg.innerHTML = "请填写病床号！"
            return false;
        }
        else if (reg.test(gimg.value)) {
            msg.innerHTML = "请选择头像！"
            return false;
        }
        else {
            return true;
        }
    }


</script>
</html>
