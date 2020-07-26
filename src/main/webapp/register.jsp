<%--
  Created by IntelliJ IDEA.
  User: A
  Date: 2020/7/24
  Time: 0:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>注册页面</title>
    <!--    引入格式文件-->
    <!--   <link rel="stylesheet" href="./css/register.css">-->
    <style type="text/css">
        *{
            margin: 0px;/*所有的外边距为0*/
            padding: 0px;/*所有的内边距为0*/
            box-sizing: border-box;/*规定两个并排的带边框的框*/
        }
        body{
            background: url("./img/register_bg.png") center no-repeat;
            padding-top: 25px;
        }
        .rg_layout{
            width: 900px;
            height: 500px;
            border: 8px solid #EEEEEE;/*solid 定义实线*/
            background-color: white;
            margin: auto;
        }
        .rg_left{
            float: left;
            margin: 15px;
        }
        .rg_left>p:first-child{
            color: #FFD026;
            font-size: 20px;
        }
        .rg_left>p:last-child{
            color: #A6A6A6;
            font-size: 20px;
        }

        .rg_center{
            float: left;
        }

        .rg_right{
            float: right;
            margin: 15px;
            padding-left: 50px;
        }
        .rg_right p{
            font-size: 15px;
        }
        .rg_right p a{
            color: #ff7f50;
        }
        .td_left{
            width: 100px;
            text-align: right;
            height: 45px;
        }
        .td_right{
            padding-left: 50px;
        }
        #userName,#passWord,#email,#realName,#phone,#address,#sex{
            width: 200px;
            height: 32px;
            border: 1px solid #A6A6A6;
            /*设置边框圆角*/
            border-radius: 5px;
            padding-left: 10px;
        }
        #checkcode{
            width: 110px;
        }
        #img_check{
            height: 32px;
            vertical-align: middle;/*设置图片的位置垂直居中*/
        }
        #btn_sub{
            width: 100px;
            height: 40px;
            background-color: #FFD026;
            border: 1px solid #FFD026;
            padding-left: 10px;
        }
    </style>
 </head>

 <body>
 <div class="rg_layout">
     <div class="rg_left">
         <p>新用户注册</p>
         <p>USER REGISTER</p>
     </div>
     <div class="rg_center">
         <div class="rg_form">
             <form action="/user/register.do" method="post">
                 <table>
                     <tr><!--label 标签的作用是当点击文字也会跳到文本输出框-->
                        <!--for属性与ID属性对应规定 label 绑定到哪个表单元素。-->
                        <td class="td_left"><label for="userName">用户名</label> </td>
                        <td class="td_right"><input type="text" name="userName" id="userName"> </td>
                    </tr>
                    <tr>
                        <td class="td_left"><label for="passWord">密码</label> </td>
                        <td class="td_right"><input type="password" name="passWord" id="passWord"> </td>
                    </tr>
                    <tr><!--label 标签的作用是当点击文字也会跳到文本输出框-->
                        <td class="td_left"><label for="email">email</label> </td>
                        <td class="td_right"><input type="email" name="email" id="email" autocomplete="off"> </td>
                    </tr>
                    <tr>
                        <td class="td_left"><label for="realName">姓名</label> </td>
                        <td class="td_right"><input type="text" name="realName" id="realName" autocomplete="off"> </td>
                    </tr>
                    <tr>
                        <td class="td_left"><label for="phone" oninput="value=value.replace(/[^\d]/g,'')">手机号</label> </td>
                        <td class="td_right"><input type="text" name="phone" id="phone" autocomplete="off"> </td>
                    </tr>
                     <tr>
                         <td class="td_left"><label for="address">地址</label> </td>
                         <td class="td_right"><input type="text" name="address" id="address" placeholder="xx省xx市xx区(县)xx街道(乡镇)"> </td>
                     </tr>

                     <tr>
                        <td class="td_left"><label for="sex">性别</label> </td>
                        <td class="td_right"><input type="text" name="sex" id="sex"> </td>
                    </tr>

                    <tr>
                        <td colspan="2" align="center">
                            <input type="submit" value="注册" id="btn_sub">
                        </td>
                    </tr>

                </table>
            </form>
        </div>
    </div>
<!--    <div class="rg_right">
        <p>已有账号？<a href="#">立即登录</a></p>
    </div> -->
</div>
</body>
</html>