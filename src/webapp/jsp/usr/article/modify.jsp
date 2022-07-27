<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.ll.exam.article.dto.ArticleDto" %>

<%
    ArticleDto article = (ArticleDto) request.getAttribute("article");
%>

<h1>게시물 수정페이지</h1>
<form action="/usr/article/modify" method="post">
    <input type="hidden" name="id" id="id" value="<%=article.getId()%>">
    <div>
        <div>
            ID : <%=article.getId()%>
        </div>
        <div>
            TITLE :
            <label for="title">
                <input type="text" name="title" id="title" value="<%=article.getTitle()%>">
            </label>
        </div>
        <div>
            BODY :
            <label for="body">
                <input type="text" name="body" id="body" value="<%=article.getBody()%>">
            </label>
        </div>
        <button type="submit">수정</button>
    </div>
</form>