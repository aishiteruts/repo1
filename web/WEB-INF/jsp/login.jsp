<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName()
            + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>登录</title>
    <meta name="description" content="particles.js is a lightweight JavaScript library for creating particles.">
    <meta name="author" content="Vincent Garreau">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/resource/login/css/style.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/login/css/reset.css">
<body>

<div id="particles-js">
    <div class="login" style="display: block;">
        <div class="login-top">报刊订阅管理系统</div>
        <div class="login-center clearfix">
            <div class="login-center-img"><img src="${pageContext.request.contextPath}/resource/login/images/name.png">
            </div>
            <div class="login-center-input">
                <input type="text" name="userCode" id="userCode" value="" placeholder="请输入您的账号"
                       onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的账号'">
                <div class="login-center-input-text">账号</div>
            </div>
        </div>
        <div class="login-center clearfix">
            <div class="login-center-img"><img
                    src="${pageContext.request.contextPath}/resource/login/images/password.png"></div>
            <div class="login-center-input">
                <input type="password" name="userPassword" id="userPassword" value="" placeholder="请输入您的密码"
                       onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的密码'">
                <div class="login-center-input-text">密码</div>
            </div>
        </div>
        <div class="login-center clearfix">
            <div style="text-align: center;">
                <div id="usertype">
                    <input type="radio" name="usertype" value="0">&nbsp;&nbsp;<span
                        style="font-size: medium;color: #333333">管理员</span>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="usertype" value="1" checked>&nbsp;&nbsp;<span
                        style="font-size: medium;color: #333333">用户</span>
                </div>
            </div>
        </div>
        <div class="login-button" id="login-button">
            登录
        </div>
        <div class="login-button" id="register-button" style="margin-top: 20px">
            注册
        </div>
    </div>
    <div class="sk-rotating-plane"></div>
    <canvas class="particles-js-canvas-el" width="1147" height="952" style="width: 100%; height: 100%;"></canvas>
</div>

<!-- scripts -->
<script src="${pageContext.request.contextPath}/resource/login/js/particles.min.js"></script>
<script src="${pageContext.request.contextPath}/resource/login/js/app.js"></script>
<script src="${pageContext.request.contextPath}/resource/login/js/jquery-1.8.0.min.js"></script>
<script type="text/javascript">
    function hasClass(elem, cls) {
        cls = cls || '';
        if (cls.replace(/\s/g, '').length == 0) return false; //当cls没有参数时，返回false
        return new RegExp(' ' + cls + ' ').test(' ' + elem.className + ' ');
    }

    function addClass(ele, cls) {
        if (!hasClass(ele, cls)) {
            ele.className = ele.className == '' ? cls : ele.className + ' ' + cls;
        }
    }

    function removeClass(ele, cls) {
        if (hasClass(ele, cls)) {
            var newClass = ' ' + ele.className.replace(/[\t\r\n]/g, '') + ' ';
            while (newClass.indexOf(' ' + cls + ' ') >= 0) {
                newClass = newClass.replace(' ' + cls + ' ', ' ');
            }
            ele.className = newClass.replace(/^\s+|\s+$/g, '');
        }
    }

    document.querySelector("#login-button").onclick = function () {
        var userCode = $("#userCode").val();
        var userPassword = $("#userPassword").val();
        var usertype = $("#usertype input[name='usertype']:checked").val();
        if (userCode == '' || userCode == 'undefined') {
            alert("请填写用户名！");
            return;
        }
        if (userPassword == '' || userPassword == 'undefined') {
            alert("请填写密码！");
            return;
        }
        addClass(document.querySelector(".login"), "active")
        addClass(document.querySelector(".sk-rotating-plane"), "active")
        document.querySelector(".login").style.display = "none"
        if (usertype == '1') {
            $.ajax({
                url: '<%=basePath%>user/login.action',
                data: {userCode: userCode, userPassword: userPassword, usertype: usertype},
                type: 'post',
                dataType: 'json',
                success: function (data) {
                    if (data.type == 'success') {
                        window.parent.location = '<%=basePath%>newspaper/list.action?userType=1';
                    } else {
                        removeClass(document.querySelector(".login"), "active");
                        removeClass(document.querySelector(".sk-rotating-plane"), "active");
                        document.querySelector(".login").style.display = "block";
                        alert(data.msg);
                    }
                }
            });
        }
        if (usertype == '0') {
            $.ajax({
                url: '<%=basePath%>admin/login.action',
                data: {adminCode: userCode, adminPassword: userPassword, usertype: usertype},
                type: 'post',
                dataType: 'json',
                success: function (data) {
                    if (data.type == 'success') {
                        window.parent.location = '<%=basePath%>newspaper/list.action';
                    } else {
                        removeClass(document.querySelector(".login"), "active");
                        removeClass(document.querySelector(".sk-rotating-plane"), "active");
                        document.querySelector(".login").style.display = "block";
                        alert(data.msg);
                    }
                }
            });
        }
    }

    document.querySelector("#register-button").onclick = function () {
        window.parent.location = '<%=basePath%>user/toRegister.action';
    }
</script>
</body>
</html>