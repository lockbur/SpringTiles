<%-- 
    Document   : layout
    Created on : 2015-9-6, 14:11:28
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${title}</title>
    </head>
    <body>
        <tiles:insertAttribute name="body"></tiles:insertAttribute>
        <tiles:insertAttribute name="footer"></tiles:insertAttribute>
    </body>
</html>
