<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.ll.exam.article.dto.ArticleDto" %>

<%
    List<ArticleDto> articles = (List<ArticleDto>) request.getAttribute("articles");
%>
<style>
    .container {
        text-align: center;
    }
    table {
        margin: 0 auto;
        border: 1px solid gray;
        border-collapse: collapse;
        border-spacing: 0;
        font-size: 24px;
    }

    table th, td {
        padding: 15px;
        border: 3px solid black;
    }

    th {
        background-color: cadetblue;
        color: white;
        font-weight: bold;
    }
</style>

<div class="container">
    <h1>게시물 리스트</h1>
    <table>
        <tr>
            <th>#</th>
            <th>제목</th>
            <th>내용</th>
            <th>수정</th>
            <th>삭제</th>
        </tr>
        <% for (ArticleDto article : articles) { %>
        <tr>
            <td><a href="/usr/article/detail/free/<%=article.getId()%>"><%=article.getId()%></a></td>
            <td><%=article.getTitle()%></td>
            <td><%=article.getBody()%></td>
            <td><a href="/usr/article/modify/free/<%=article.getId()%>">수정</a></td>
            <td><a onclick="if( !confirm('정말 삭제하시겠습니까?')) return false;" href="/usr/article/delete/free/<%=article.getId()%>">삭제</a></td>
        </tr>
        <% } %>
    </table>
</div>