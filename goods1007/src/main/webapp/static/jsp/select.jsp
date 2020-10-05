<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/10/6
  Time: 0:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Title</title>
    <script src="/static/js/jQuery.js"></script>
    <script src="/static/js/select.js"></script>
</head>
<body>
<center>
    <table border="1px" width="800px">
        <tr style="text-align: center">
            <th>商品编号</th>
            <th>商品名称</th>
            <th>商品价格</th>
            <th>库存数量</th>
            <th>订单状态</th>
            <th>操作</th>
        </tr>
        <c:if test="${goods.size()>0}">
            <c:forEach items="${goods}" var="item2">
                <tr style="text-align: center">
                    <td><input hidden value="${item2.id}" class="id">${item2.id}</td>
                    <td><input hidden value="${item2.goodname}" class="goodname">${item2.goodname}</td>
                    <td><input hidden value="${item2.goodsprice}" class="goodsprice">${item2.goodsprice}</td>
                    <td><input hidden value="${item2.goodscount}" class="goodscount">${item2.goodscount}</td>
                    <td>
                        <c:if test="${item2.billstatus==0}">
                            <input hidden value="待处理" class="billstatus"><span>待处理</span>
                        </c:if>
                        <c:if test="${item2.billstatus==1}">
                            <input hidden value="处理中" class="billstatus"><span>处理中</span>
                        </c:if>
                        <c:if test="${item2.billstatus==2}">
                            <input hidden value="已处理" class="billstatus"><span>已处理</span>
                        </c:if>
                    </td>
                    <td><a href="javascript:void(0)" class="update">修改</a> </td>
                </tr>
            </c:forEach>
        </c:if>

    </table>
</center>
</body>
</html>
