<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>患者监护系统登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/png" href="assets/images/icon/favicon.ico">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
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

<!-- login area start -->
<div class="login-area">
    <div class="container">
        <div class="login-box ptb--100">
            <form action="${pageContext.request.contextPath}/login" onsubmit="return checkForm()" method="post">
                <div class="login-form-head">
                    <h4>患者监护系统后台管理</h4>
                </div>
                <div class="login-form-body">
                    <p id="msg" class="text-center" style="color: red;">${msg}&nbsp;</p>
                    <div class="form-gp">
                        <label for="username">医护人员姓名</label>
                        <input type="text" id="username" name="username" value="${username}">
                        <i class="ti-email"></i>
                    </div>
                    <div class="form-gp">
                        <label for="password">密码</label>
                        <input type="password" id="password" name="password">
                        <i class="ti-lock"></i>
                    </div>
                    <div class="row mb-4 rmber-area">
                        <div class="col-6">
                            <div class="custom-control custom-checkbox mr-sm-2">
                                <input type="checkbox" class="custom-control-input" id="customControlAutosizing">
                                <label class="custom-control-label" for="customControlAutosizing">记住密码</label>
                            </div>
                        </div>
                        <div class="col-6 text-right">
                            <a href="#">忘记密码?</a>
                        </div>
                    </div>
                    <div class="submit-btn-area">
                        <button id="form_submit" type="submit">登录 <i class="ti-arrow-right"></i></button>
                    </div>
<%--                    <div class="form-footer text-center mt-5">--%>
<%--                        <p class="text-muted">没有账号? <a href="${pageContext.request.contextPath}/registerPage">注册</a></p>--%>
<%--                    </div>--%>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- login area end -->

<!-- jquery latest version -->
<script src="assets/js/vendor/jquery-2.2.4.min.js"></script>
<!-- bootstrap 4 js -->
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/owl.carousel.min.js"></script>
<script src="assets/js/metisMenu.min.js"></script>
<script src="assets/js/jquery.slimscroll.min.js"></script>
<script src="assets/js/jquery.slicknav.min.js"></script>

<!-- others plugins -->
<script src="assets/js/plugins.js"></script>
<script src="assets/js/scripts.js"></script>
<script>

    function checkForm() {
        var username = document.getElementById("username");
        var password = document.getElementById("password");
        var msg = document.getElementById("msg");
        var reg = /^\s*$/;
        if (reg.test(username.value)) {
            msg.innerHTML = "姓名不能为空"
            return false;

        } else if (reg.test(password.value)) {
            msg.innerHTML = "密码不能为空"
            return false;
        } else {
            return true;
        }
    }


</script>
</body>

</html>