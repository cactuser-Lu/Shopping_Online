<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>数据 - AdminLTE2定制版</title>
    <meta name="description" content="AdminLTE2定制版">
    <meta name="keywords" content="AdminLTE2定制版">

    <!-- Tell the browser to be responsive to screen width -->
    <meta
            content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
            name="viewport">

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/ionicons/css/ionicons.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/iCheck/square/blue.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/morris/morris.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/datepicker/datepicker3.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.theme.default.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/select2/select2.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/adminLTE/css/skins/_all-skins.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.skinNice.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-slider/slider.css">

    <!-- 引入样式 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/bootstrap-slider/index.css">
    <!-- 引入组件库 -->
    <%--<script src="${pageContext.request.contextPath}/plugins/bootstrap-slider/index.js"></script>--%>

</head>

<body class="hold-transition skin-blue sidebar-mini">

<div class="wrapper">

    <!-- 页面头部 -->
    <jsp:include page="header.jsp"></jsp:include>
    <!-- 页面头部 /-->

    <!-- 导航侧栏 -->
    <jsp:include page="aside.jsp"></jsp:include>
    <!-- 导航侧栏 /-->

    <!-- 内容区域 -->
    <div class="content-wrapper">

        <section class=" user-panel text-center">
            <div class="row">

                <div class="col-md-3 ">
                </div>
                <div class="col-md-6 ">
                    <div class="thumbnail">
                        <img src="${pageContext.request.contextPath}/img/user2-160x160.jpg"
                             class="img-circle" alt="User Image">
                        <div class="caption ">
                            <h3>
                                <a href="" title="">个人资料<br><br></a>
                            </h3>
                            <div class="text-blue" style="font-size: 15px;">
                                <p>用户名:<text class="text-black">${user.userName}</text></p>
                                <p>密码:<text class="text-black">${user.passWord}</text></p>
                                <p>联系方式:<text class="text-black">${user.phone}</text></p>
                                <p>地址:<text class="text-black">${user.address}</text></p>
                                <p>邮箱:<text class="text-black">${user.email}</text></p>
                                <p>真实姓名:<text class="text-black">${user.realName}</text></p>
                                <p>性别:<text class="text-black">${user.sex}</text></p>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="col-md-3 ">
                </div>

            </div>

        </section>

        <!-- 正文区域 -->
        <div class="row">
            <div class="col-md-3 ">
            </div>
            <section class="content col-md-6"> <!-- .box-body -->
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">收货地址</h3>
                    </div>

                    <div class="box-body">

                        <!-- 数据表格 -->
                        <div class="table-box">

                            <!--工具栏-->
                            <div class="pull-left">
                                <div class="form-group form-inline">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-default" title="新建"
                                                onclick="location.href='${pageContext.request.contextPath}/pages/user-add.jsp'" >
                                            <i class="fa fa-file-o"></i> 新建
                                        </button>

                                        <button type="button" class="btn btn-default" title="删除" onclick="deleteAll()">
                                            <i class="fa fa-refresh"></i> 删除
                                        </button>
                                    </div>
                                </div>
                            </div>

                            <!--数据列表-->
                            <table id="dataList"
                                   class="table table-hover dataTable">
                                <thead>
                                <tr>
                                    <th class="" style="padding-right: 0px"><input
                                            id="selall" type="checkbox" class="icheckbox_square-blue">
                                    </th>
                                    <th class="text-center">收货人</th>
                                    <th class="text-center">所在地区</th>
                                    <th class="text-center">邮件</th>
                                    <th class="text-center">电话/手机</th>
                                    <th class="text-center">操作</th>
                                    <th class="text-center"></th>
                                </tr>
                                </thead>

                                <tbody>

                                <tr>
                                    <%--<td><input id="ids" name="ids" type="checkbox" value="${user.id}"></td>--%>

                                    <td>1</td>
                                    <td>${user.userName}</td>
                                    <td>${user.address}</td>
                                    <td>${user.email}</td>
                                    <td class="text-center">
                                        <a href="" class="btn bg-olive btn-xs">更新</a>
                                        <a href="" class="btn bg-olive btn-xs">删除</a>
                                        <%--<a href="" class="btn bg-olive btn-xs">添加角色</a>--%>

                                    </td>
                                    <td>设为默认</td>
                                </tr>
                                <tr>
                                    <%--<td><input id="ids" name="ids" type="checkbox" value="${user.id}"></td>--%>

                                    <td>2</td>
                                    <td>${user.realName}</td>
                                    <td>${user.address}</td>
                                    <td>${user.email}</td>
                                    <td class="text-center">
                                        <a href="" class="btn bg-olive btn-xs">更新</a>
                                        <a href="" class="btn bg-olive btn-xs">删除</a>
                                        <%--<a href="" class="btn bg-olive btn-xs">添加角色</a>--%>

                                    </td>
                                    <td>设为默认</td>
                                </tr>

                                </tbody>

                            </table>
                            <!--数据列表/-->
                        </div>
                        <!-- 数据表格 /-->
                    </div>

                </div>
                <!-- /.box-footer-->

            </section>
            <!-- 正文区域 /-->
            <div class="col-md-3 ">
            </div>
        </div>


    </div>
    <!-- @@close -->
    <!-- 内容区域 /-->

    <!-- 底部导航 -->
    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>Version</b> 1.0.8
        </div>
        <strong>Copyright &copy; 2014-2017 <a
                href="http://www.chinasofti.com">研究院研发部</a>.
        </strong> All rights reserved. </footer>
    <!-- 底部导航 /-->

</div>

<script src="../plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="../plugins/jQueryUI/jquery-ui.min.js"></script>
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<script src="../plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="../plugins/raphael/raphael-min.js"></script>
<script src="../plugins/morris/morris.min.js"></script>
<script src="../plugins/sparkline/jquery.sparkline.min.js"></script>
<script src="../plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="../plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script src="../plugins/knob/jquery.knob.js"></script>
<script src="../plugins/daterangepicker/moment.min.js"></script>
<script src="../plugins/daterangepicker/daterangepicker.js"></script>
<script src="../plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
<script src="../plugins/datepicker/bootstrap-datepicker.js"></script>
<script
        src="../plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
<script
        src="../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script src="../plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script src="../plugins/fastclick/fastclick.js"></script>
<script src="../plugins/iCheck/icheck.min.js"></script>
<script src="../plugins/adminLTE/js/app.min.js"></script>
<script src="../plugins/treeTable/jquery.treetable.js"></script>
<script src="../plugins/select2/select2.full.min.js"></script>
<script src="../plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<script
        src="../plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
<script src="../plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
<script
        src="../plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
<script src="../plugins/bootstrap-markdown/js/markdown.js"></script>
<script src="../plugins/bootstrap-markdown/js/to-markdown.js"></script>
<script src="../plugins/ckeditor/ckeditor.js"></script>
<script src="../plugins/input-mask/jquery.inputmask.js"></script>
<script
        src="../plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="../plugins/input-mask/jquery.inputmask.extensions.js"></script>
<script src="../plugins/datatables/jquery.dataTables.min.js"></script>
<script src="../plugins/datatables/dataTables.bootstrap.min.js"></script>
<script src="../plugins/chartjs/Chart.min.js"></script>
<script src="../plugins/flot/jquery.flot.min.js"></script>
<script src="../plugins/flot/jquery.flot.resize.min.js"></script>
<script src="../plugins/flot/jquery.flot.pie.min.js"></script>
<script src="../plugins/flot/jquery.flot.categories.min.js"></script>
<script src="../plugins/ionslider/ion.rangeSlider.min.js"></script>
<script src="../plugins/bootstrap-slider/bootstrap-slider.js"></script>
<script>
    $(document).ready(function() {
        // 选择框
        $(".select2").select2();

        // WYSIHTML5编辑器
        $(".textarea").wysihtml5({
            locale : 'zh-CN'
        });
    });

    // 设置激活菜单
    function setSidebarActive(tagUri) {
        var liObj = $("#" + tagUri);
        if (liObj.length > 0) {
            liObj.parent().parent().addClass("active");
            liObj.addClass("active");
        }
    }

    $(document)
        .ready(
            function() {

                // 激活导航位置
                setSidebarActive("admin-datalist");

                // 列表按钮
                $("#dataList td input[type='checkbox']")
                    .iCheck(
                        {
                            checkboxClass : 'icheckbox_square-blue',
                            increaseArea : '20%'
                        });
                // 全选操作
                $("#selall")
                    .click(
                        function() {
                            var clicks = $(this).is(
                                ':checked');
                            if (!clicks) {
                                $(
                                    "#dataList td input[type='checkbox']")
                                    .iCheck(
                                        "uncheck");
                            } else {
                                $(
                                    "#dataList td input[type='checkbox']")
                                    .iCheck("check");
                            }
                            $(this).data("clicks",
                                !clicks);
                        });
            });

    function deleteAll() {
        var checkedNum=$("input[name='ids']:checked").length;
        alert(checkedNum);
        if(checkedNum==0){
            alert("请至少选择一个进行删除！！！");
            return;
        }
        if(confirm("确认要删除这些用户吗？")){
            var userList=new Array();
            $("input[name='ids']:checked").each(
                function () {
                    userList.push($(this).val())
                }
            );
            alert(userList);
            $.ajax({
                type:"post",
                url: "${pageContext.request.contextPath}/user/deleteAll.do",
                data:{userList:userList.toString()},
                success:function () {
                    alert("删除成功");
                    location.reload();

                },
                error:function () {
                    alert("删除失败");
                }
            });
        }





    }


</script>
</body>

</html>