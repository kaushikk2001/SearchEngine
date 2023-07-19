<%@ page import="java.util.ArrayList" %>
<%@ page import="com.Accio.SearchResult" %><%--
  Created by IntelliJ IDEA.
  User: Kaushik
  Date: 20-07-2023
  Time: 01:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <h1>Simple Search Engine</h1>
    <form action="Search">
        <input type="text" name="keyword"></input>
        <button type = "submit">Search </button>
    </form>
    <form action="History">
        <button type = "submit">History </button>
    </form>
    <table border="2" class="resultTable">
        <tr>
            <th>Title</th>
            <th>Link</th>
        </tr>
        <%
            ArrayList<SearchResult> results= (ArrayList<SearchResult>) request.getAttribute("results");
            for(SearchResult result:results){
        %>
        <tr>
            <td><%out.println(result.getTitle());%></td>
            <td><a href="<%out.println(result.getLink());%>"><%out.println(result.getLink());%></a></td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>
