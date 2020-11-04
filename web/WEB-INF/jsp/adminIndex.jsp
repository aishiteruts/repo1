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
                        <a href="${pageContext.request.contextPath }/newspaper/list.action" class="active">
                            <i class="fa fa-edit fa-fw"></i> 报刊信息管理
                        </a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath }/user/list.action">
                            <i class="fa fa-dashboard fa-fw"></i> 用户信息管理
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- 左侧显示列表部分 end-->
    </nav>
    <!-- 报刊列表查询部分  start-->
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">报刊信息管理</h1>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-body">
                <form class="form-inline" method="get"
                      action="${pageContext.request.contextPath }/newspaper/list.action">
                    <div class="form-group">
                        <label for="newspaperName">报刊名称</label>
                        <input type="text" class="form-control" id="newspaperName"
                               value="${newspaperName}" name="newspaperName"/>
                    </div>
                    <div class="form-group">
                        <label for="newspaperClass">报刊类型</label>
                        <select class="form-control" id="newspaperClass" name="newspaperClassCode">
                            <option value="">--请选择--</option>
                            <c:forEach items="${newspaperClasses}" var="item">
                                <option value="${item.newspaperClassCode}"
                                        <c:if test="${item.newspaperClassCode == newspaperClassCode}">selected</c:if>>
                                        ${item.newspaperClassName}
                                </option>
                            </c:forEach>
                        </select>
                    </div>

                    <button type="submit" class="btn btn-primary">查询</button>
                </form>
            </div>
        </div>
        <a href="#" class="btn btn-primary" data-toggle="modal"
           data-target="#newNewspaperDialog" onclick="clearNewspaper()">新建</a>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">报刊信息列表</div>
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th>报刊代号</th>
                            <th>报刊名称</th>
                            <th>出版社</th>
                            <th>出版周期</th>
                            <th>季度报价</th>
                            <th>报刊类型</th>
                            <th>简介</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${page.rows}" var="row">
                            <tr>
                                <td>${row.newspaperCode}</td>
                                <td>${row.newspaperName}</td>
                                <td>${row.newspaperPublish}</td>
                                <td>${row.newspaperCycle}</td>
                                <td>${row.newspaperQuotation}</td>
                                <td>${row.newspaperClassName}</td>
                                <td>${row.newspaperBrief}</td>
                                <td>
                                    <a href="#" class="btn btn-primary btn-xs" data-toggle="modal"
                                       data-target="#newspaperEditDialog"
                                       onclick="editNewspaper('${row.newspaperCode}')">修改</a>
                                    <a href="#" class="btn btn-danger btn-xs"
                                       onclick="deleteNewspaper('${row.newspaperCode}')">删除</a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <div class="col-md-12 text-right">
                        <dqh:page url="${pageContext.request.contextPath }/newspaper/list.action"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 报刊列表查询部分  end-->
</div>
<!-- 新增报刊模态框 -->
<div class="modal fade" id="newNewspaperDialog" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel1">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel1">新增报刊信息</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="new_newspaper_form">
                    <div class="form-group">
                        <label for="new_newspaperCode" class="col-sm-2 control-label">
                            报刊代号
                        </label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="new_newspaperCode" placeholder="报刊代号"
                                   name="newspaperCode"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_newspaperName" class="col-sm-2 control-label">
                            报刊名称
                        </label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="new_newspaperName" placeholder="报刊名称"
                                   name="newspaperName"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_newspaperPublish" class="col-sm-2 control-label">出版社</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="new_newspaperPublish" placeholder="出版社"
                                   name="newspaperPublish"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_newspaperCycle" class="col-sm-2 control-label">出版周期</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="new_newspaperCycle" placeholder="出版周期"
                                   name="newspaperCycle"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_newspaperQuotation" class="col-sm-2 control-label">季度报价</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="new_newspaperQuotation" placeholder="季度报价"
                                   name="newspaperQuotation"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_newspaperClass" style="float:left;padding:7px 15px 0 27px;">报刊类别</label>
                        <div class="col-sm-10">
                            <select class="form-control" id="new_newspaperClass" name="newspaperClassCode">
                                <option value="">--请选择--</option>
                                <c:forEach items="${newspaperClasses}" var="item">
                                    <option value="${item.newspaperClassCode}"
                                            <c:if test="${item.newspaperClassCode == newspaperClassCode}">selected</c:if>>
                                            ${item.newspaperClassName }
                                    </option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="new_newspaperBrief" class="col-sm-2 control-label">简介</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="new_newspaperBrief" placeholder="简介"
                                   name="newspaperBrief"/>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="createNewspaper()">新增报刊</button>
            </div>
        </div>
    </div>
</div>
<!-- 修改报刊模态框 -->
<div class="modal fade" id="newspaperEditDialog" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">修改报刊信息</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="edit_newspaper_form">
                    <input type="hidden" id="edit_newspaperCode" name="newspaperCode"/>
                    <div class="form-group">
                        <label for="edit_newspaperName" class="col-sm-2 control-label">报刊名称</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_newspaperName" placeholder="报刊名称"
                                   name="newspaperName"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_newspaperPublish" class="col-sm-2 control-label">出版社</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_newspaperPublish" placeholder="出版社"
                                   name="newspaperPublish"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_newspaperCycle" class="col-sm-2 control-label">出版周期</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_newspaperCycle" placeholder="出版周期"
                                   name="newspaperCycle"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_newspaperQuotation" class="col-sm-2 control-label">季度报价</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_newspaperQuotation" placeholder="季度报价"
                                   name="newspaperQuotation"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_newspaperClass" style="float:left;padding:7px 15px 0 27px;">报刊类别</label>
                        <div class="col-sm-10">
                            <select class="form-control" id="edit_newspaperClass" name="newspaperClassCode">
                                <option value="">--请选择--</option>
                                <c:forEach items="${newspaperClasses}" var="item">
                                    <option value="${item.newspaperClassCode}"<c:if
                                            test="${item.newspaperClassCode == newspaperClassCode}"> selected</c:if>>
                                            ${item.newspaperClassName }</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_newspaperBrief" class="col-sm-2 control-label">简介</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_newspaperBrief" placeholder="简介"
                                   name="newspaperBrief"/>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="updateNewspaper()">保存修改</button>
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

    function clearNewspaper() {
        $("#new_newspaperCode").val("");
        $("#new_newspaperName").val("");
        $("#new_newspaperPublish").val("")
        $("#new_newspaperCycle").val("")
        $("#new_newspaperQuotation").val("")
        $("#new_newspaperBrief").val("");
        $("#new_newspaperClass").val("");
    }

    function createNewspaper() {
        $.post("<%=basePath%>newspaper/create.action", $("#new_newspaper_form").serialize(), function (data) {
            if (data == "OK") {
                alert("新增报刊成功！");
                window.location.reload();
            } else {
                alert("新增报刊失败！");
                window.location.reload();
            }
        });
    }

    function editNewspaper(code) {
        $.ajax({
            type: "get",
            url: "<%=basePath%>newspaper/getNewspaperByNewspaperCode.action",
            data: {"newspaperCode": code},
            success: function (data) {
                $("#edit_newspaperCode").val(data.newspaperCode);
                $("#edit_newspaperName").val(data.newspaperName);
                $("#edit_newspaperPublish").val(data.newspaperPublish)
                $("#edit_newspaperCycle").val(data.newspaperCycle)
                $("#edit_newspaperQuotation").val(data.newspaperQuotation)
                $("#edit_newspaperClass").val(data.newspaperClassCode);
                $("#edit_newspaperBrief").val(data.newspaperBrief);

            }
        });
    }

    function updateNewspaper() {
        $.post("<%=basePath%>newspaper/update.action", $("#edit_newspaper_form").serialize(), function (data) {
            if (data == "OK") {
                alert("报刊信息更新成功！");
                window.location.reload();
            } else {
                alert("报刊信息更新失败！");
                window.location.reload();
            }
        });
    }

    function deleteNewspaper(newspaperCode) {
        if (confirm('确实要删除该报刊吗?')) {
            $.post("<%=basePath%>newspaper/delete.action", {"newspaperCode": newspaperCode}, function (data) {
                if (data == "OK") {
                    alert("报刊删除成功！");
                    window.location.reload();
                } else {
                    alert("删除报刊失败！");
                    window.location.reload();
                }
            });
        }
    }
</script>
</body>
</html>