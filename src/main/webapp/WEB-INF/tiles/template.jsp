<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/node_modules/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/common.css">
<script src='/node_modules/sweetalert/dist/sweetalert.min.js'></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<title>GreenRight</title>
</head>
<body>
<tiles:insertAttribute name="header"/>
<tiles:insertAttribute name="body"/>
<tiles:insertAttribute name="footer"/>
</body>
</html>