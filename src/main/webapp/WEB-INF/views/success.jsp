<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: yuhan.shen
  Date: 2017/10/25
  Time: 10:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<br>
<br>
<br>
a.	Increment Report
<table border="1" cellspacing="0" cellpadding="0" style="width: 100%">
    <tr>
        <td style="width: 20%">Year</td>
        <td style="width: 20%">Starting Salary</td>
        <td style="width: 20%">Number of Increments</td>
        <td style="width: 20%">Increment %</td>
        <td style="width: 20%">Increment Amount</td>
    </tr>
    <c:forEach items="${listIncrementReport}" var="strincrementReport">
        <tr>
            <td>${strincrementReport.year}</td>
            <td>${strincrementReport.startingSalary}</td>
            <td> ${strincrementReport.numberOFIncrements}</td>
            <td>${strincrementReport.increment}</td>
            <td>${strincrementReport.incrementAmount}</td>
        </tr>
    </c:forEach>
</table>
<br>
<br>
<br>
b.	Deduction Report

<table border="1" cellspacing="0" cellpadding="0" style="width: 100%">
    <tr>
        <td style="width: 20%">Year</td>
        <td style="width: 20%">Starting Salary</td>
        <td style="width: 20%">Number of deductions</td>
        <td style="width: 20%">Deduction %</td>
        <td style="width: 20%">Deduction Amount</td>
    </tr>
    <c:forEach items="${listDductionReport}" var="ductionReport">
        <tr>
            <td style="width: 20%">${ductionReport.year}</td>
            <td style="width: 20%"> ${ductionReport.startingSalary}</td>
            <td style="width: 20%">${ductionReport.numberOFdeductions}</td>
            <td style="width: 20%">${ductionReport.deduction}</td>
            <td style="width: 20%">${ductionReport.deductionAmount}</td>

        </tr>
    </c:forEach>
</table>
<br>
<br>
c.	Prediction
<br>
<table border="1" cellspacing="0" cellpadding="0" style="width: 100%">
    <tr>
        <td style="width: 20%">Year</td>
        <td style="width: 20%">Starting Salary</td>
        <td style="width: 20%">Increment Amount</td>
        <td style="width: 20%">Deduction Amount</td>
        <td style="width: 20%">Salary Growth</td>
    </tr>
    <c:forEach items="${listPprediction}" var="strprediction">
        <tr>
            <td style="width: 20%">${strprediction.year}</td>
            <td style="width: 20%">${strprediction.startingSalary}</td>
            <td style="width: 20%">${strprediction.incrementAmount}</td>
            <td style="width: 20%">${strprediction.deductionAmount}</td>
            <td style="width: 20%">${strprediction.salaryGrowth}</td>
        </tr>
    </c:forEach>
</table>


</body>
</html>
