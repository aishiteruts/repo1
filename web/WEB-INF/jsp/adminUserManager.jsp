<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="dqh" uri="http://dqh.com/common/" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName()
            + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>报刊订阅管理系统</title>
    <!-- 引入css样式文件 -->
    <!-- Bootstrap Core CSS -->
    <link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet"/>
    <!-- MetisMenu CSS -->
    <link href="<%=basePath%>css/metisMenu.min.css" rel="stylesheet"/>
    <!-- DataTables CSS -->
    <link href="<%=basePath%>css/dataTables.bootstrap.css" rel="stylesheet"/>
    <!-- Custom CSS -->
    <link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet"/>
    <!-- Custom Fonts -->
    <link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="<%=basePath%>css/press.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div id="wrapper">
    <!-- 导航栏部分 -->
    <nav class="navbar navbar-default navbar-static-top" role="navigation"
         style="margin-bottom: 0">
        <div class="navbar-header">
            <a class="navbar-brand" href="<%=basePath%>newspaper/list.action">报刊订阅管理系统</a>
        </div>
        <!-- 导航栏右侧图标部分 -->
        <ul class="nav navbar-top-links navbar-right">
            <!-- 邮件通知 start -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-envelope fa-fw"></i>
                    <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-messages">
                    <li>
                        <a href="#">
                            <div>
                                <strong>张经理</strong> <span class="pull-right text-muted">
								<em>昨天</em>
							</span>
                            </div>
                            <div>今天晚上开会，讨论一下下个月工作的事...</div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a class="text-center" href="#">
                            <strong>查看全部消息</strong>
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </li>
                </ul>
            </li>
            <!-- 邮件通知 end -->
            <!-- 任务通知 start -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-tasks fa-fw"></i>
                    <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-tasks">
                    <li>
                        <a href="#">
                            <div>
                                <p>
                                    <strong>任务 1</strong>
                                    <span class="pull-right text-muted">完成40%</span>
                                </p>
                                <div class="progress progress-striped active">
                                    <div class="progress-bar progress-bar-success"
                                         role="progressbar" aria-valuenow="40" aria-valuemin="0"
                                         aria-valuemax="100" style="width: 40%">
                                        <span class="sr-only">完成40%</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <p>
                                    <strong>任务 2</strong>
                                    <span class="pull-right text-muted">完成20%</span>
                                </p>
                                <div class="progress progress-striped active">
                                    <div class="progress-bar progress-bar-info" role="progressbar"
                                         aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
                                         style="width: 20%">
                                        <span class="sr-only">完成20%</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a class="text-center" href="#">
                            <strong>查看所有任务</strong>
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </li>
                </ul>
            </li>
            <!-- 任务通知 end -->
            <!-- 消息通知 start -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-bell fa-fw"></i>
                    <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-alerts">
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-comment fa-fw"></i> 新回复
                                <span class="pull-right text-muted small">4分钟之前</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-envelope fa-fw"></i> 新消息
                                <span class="pull-right text-muted small">4分钟之前</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-tasks fa-fw"></i> 新任务
                                <span class="pull-right text-muted small">4分钟之前</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-upload fa-fw"></i> 服务器重启
                                <span class="pull-right text-muted small">4分钟之前</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a class="text-center" href="#">
                            <strong>查看所有提醒</strong>
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </li>
                </ul>
            </li>
            <!-- 消息通知 end -->
            <!-- 用户信息和系统设置 start -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-user fa-fw"></i>
                    <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="#"><i class="fa fa-user fa-fw"></i>
                        用户：${USER_SESSION.adminName}
                    </a>
                    </li>
                    <li><a href="#"><i class="fa fa-gear fa-fw"></i> 系统设置</a></li>
                    <li class="divider"></li>
                    <li>
                        <a href="${pageContext.request.contextPath }/admin/logout.action">
                            <i class="fa fa-sign-out fa-fw"></i>退出登录
                        </a>
                    </li>
                </ul>
            </li>
            <!-- 用户信息和系统设置结束 -->
        </ul>
        <!-- 左侧显示列表部分 start-->
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <ul class="nav" id="side-menu">
                    <li class="sidebar-search">
                        <div class="input-group custom-search-form">
                            <input type="text" class="form-control" placeholder="查询内容...">
                            <span class="input-group-btn">
							<button class="btn btn-default" type="button">
								<i class="fa fa-search" style="padding: 3px 0 3px 0;"></i>
							</button>
						</span>
                        </div>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath }/newspaper/list.action">
                            <i class="fa fa-edit fa-fw"></i> 报刊信息管理
                        </a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath }/user/list.action" class="active">
                            <i class="fa fa-dashboard fa-fw"></i> 用户信息管理
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- 左侧显示列表部分 end-->
    </nav>
    <!-- 用户列表查询部分  start-->
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">用户信息管理</h1>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-body">
                <form class="form-inline" method="get"
                      action="${pageContext.request.contextPath }/user/list.action">
                    <div class="form-group">
                        <label for="userName">姓名</label>
                        <input type="text" class="form-control" id="userName"
                               value="${userName}" name="userName"/>
                    </div>
                    <div class="form-group">
                        <label for="department">部门</label>
                        <select class="form-control" id="department" name="departmentCode">
                            <option value="">--请选择--</option>
                            <c:forEach items="${departments}" var="item">
                                <option value="${item.departmentCode}"
                                        <c:if test="${item.departmentCode == departmentCode}">selected</c:if>>
                                        ${item.departmentName}
                                </option>
                            </c:forEach>
                        </select>
                    </div>
                    <button type="submit" class="btn btn-primary">查询</button>
                </form>
            </div>
        </div>
        <a href="#" class="btn btn-primary" data-toggle="modal"
           data-target="#newUserDialog" onclick="clearUser()">新建</a>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">用户信息列表</div>
                    <!-- /.panel-heading -->
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th>账号</th>
                            <th>姓名</th>
                            <th>身份证号</th>
                            <th>联系电话</th>
                            <th>联系地址</th>
                            <th>部门</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${page.rows}" var="row">
                            <tr>
                                <td>${row.userCode}</td>
                                <td>${row.userName}</td>
                                <td>${row.userIdcard}</td>
                                <td>${row.userPhone}</td>
                                <td>${row.userAddress}</td>
                                <td>${row.departmentName}</td>
                                <td>
                                    <a href="#" class="btn btn-primary btn-xs" data-toggle="modal"
                                       data-target="#userEditDialog"
                                       onclick="editUser('${row.userCode}')">修改</a>
                                    <a href="#" class="btn btn-danger btn-xs"
                                       onclick="deleteUser('${row.userCode}')">删除</a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <div class="col-md-12 text-right">
                        <dqh:page url="${pageContext.request.contextPath }/user/list.action"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 用户列表查询部分  end-->
</div>
<!-- 创建用户模态框 -->
<div class="modal fade" id="newUserDialog" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel1">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel1">新增用户信息</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="new_user_form">
                    <div class="form-group">
                        <label for="new_userCode" class="col-sm-2 control-label">
                            账号
                        </label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="new_userCode" placeholder="账号"
                                   name="userCode"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_userName" class="col-sm-2 control-label">
                            姓名
                        </label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="new_userName" placeholder="姓名"
                                   name="userName"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_userIdcard" class="col-sm-2 control-label">身份证号</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="new_userIdcard" placeholder="身份证号"
                                   name="userIdcard"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_userPhone" class="col-sm-2 control-label">联系电话</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="new_userPhone" placeholder="联系电话"
                                   name="userPhone"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_userAddress" class="col-sm-2 control-label">联系地址</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="new_userAddress" placeholder="联系地址"
                                   name="userAddress"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_department" class="col-sm-2 control-label">部门</label>
                        <div class="col-sm-10">
                            <select class="form-control" id="new_department" name="departmentCode">
                                <option value="">--请选择--</option>
                                <c:forEach items="${departments}" var="item">
                                    <option value="${item.departmentCode}"
                                            <c:if test="${item.departmentCode == departmentCode}">selected</c:if>>
                                            ${item.departmentName }
                                    </option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="createUser()">新增用户</button>
            </div>
        </div>
    </div>
</div>
<!-- 修改用户模态框 -->
<div class="modal fade" id="userEditDialog" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">修改用户信息</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="edit_user_form">
                    <input type="hidden" id="edit_userCode" name="userCode"/>
                    <div class="form-group">
                        <label for="edit_userName" class="col-sm-2 control-label">姓名</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_userName" placeholder="姓名"
                                   name="userName"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_userIdcard" class="col-sm-2 control-label">身份证号</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_userIdcard" placeholder="身份证号"
                                   name="userIdcard"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_userPhone" class="col-sm-2 control-label">联系电话</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_userPhone" placeholder="联系电话"
                                   name="userPhone"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_userAddress" class="col-sm-2 control-label">联系地址</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_userAddress" placeholder="联系地址"
                                   name="userAddress"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_department" class="col-sm-2 control-label">部门</label>
                        <div class="col-sm-10">
                            <select class="form-control" id="edit_department" name="departmentCode">
                                <option value="">--请选择--</option>
                                <c:forEach items="${departments}" var="item">
                                    <option value="${item.departmentCode}"<c:if
                                            test="${item.departmentCode == departmentCode}"> selected</c:if>>
                                            ${item.departmentName }</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="updateUser()">保存修改</button>
            </div>
        </div>
    </div>
</div>
<!-- 引入js文件 -->
<!-- jQuery -->
<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script src="<%=basePath%>js/metisMenu.min.js"></script>
<!-- DataTables JavaScript -->
<script src="<%=basePath%>js/jquery.dataTables.min.js"></script>
<script src="<%=basePath%>js/dataTables.bootstrap.min.js"></script>
<!-- Custom Theme JavaScript -->
<script src="<%=basePath%>js/sb-admin-2.js"></script>
<!-- 编写js代码 -->
<script type="text/javascript">

    function clearUser() {
        $("#new_userCode").val("");
        $("#new_userName").val("");
        $("#new_userIdcard").val("")
        $("#new_userPhone").val("")
        $("#new_userAddress").val("")
        $("#new_department").val("");
    }

    function createUser() {
        $.post("<%=basePath%>user/create.action",
            $("#new_user_form").serialize(), function (data) {
                if (data == "OK") {
                    alert("用户添加成功！");
                    window.location.reload();
                } else {
                    alert("用户添加失败！");
                    window.location.reload();
                }
            });
    }

    function editUser(userCode) {
        $.ajax({
            type: "get",
            url: "<%=basePath%>user/getUserByUserCode.action",
            data: {"userCode": userCode},
            success: function (data) {
                $("#edit_userCode").val(data.userCode);
                $("#edit_userName").val(data.userName);
                $("#edit_userIdcard").val(data.userIdcard)
                $("#edit_userPhone").val(data.userPhone)
                $("#edit_userAddress").val(data.userAddress)
                $("#edit_department").val(data.departmentCode);
            }
        });
    }

    function updateUser() {
        $.post("<%=basePath%>user/update.action", $("#edit_user_form").serialize(), function (data) {
            if (data == "OK") {
                alert("用户信息更新成功！");
                window.location.reload();
            } else {
                alert("用户信息更新失败！");
                window.location.reload();
            }
        });
    }

    function deleteUser(userCode) {
        if (confirm('确实要删除该用户吗?')) {
            $.post("<%=basePath%>user/delete.action", {"userCode": userCode},
                function (data) {
                    if (data == "OK") {
                        alert("删除用户成功！");
                        window.location.reload();
                    } else {
                        alert("删除用户失败！");
                        window.location.reload();
                    }
                });
        }
    }
</script>
</body>
</html>