<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018年3月14日,0014
  Time: 16:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册成功</title>
</head>
<body onload="doRegister()">
<script type="text/javascript">
    function doRegister() {
        var num=${num};
        if (num=="1"){
            alert("注册成功！");
            window.location="index";
        }
    }
</script>
</body>
</html>
