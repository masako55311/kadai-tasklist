<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <h2>No.${task.id}のタスクの編集ページ</h2>

        <form method="POST" action="${pageContext.request.contextPath}/update">
            <label for="content">タスク</label><br />
            <input type="text" name="content" value="${task.content}" />
            <br /><br />

            <input type="hidden" name="_token" value="${_token}" />
            <button type="submit">変更する</button>
        </form>

        <p><a href="${pageContext.request.contextPath}/index">一覧にもどる</a></p>
        <p><a href="#" onclick="confirmDestroy();">このタスクを削除する</a></p>
        <form method="POST" action="${pageContext.request.contextPath}/destroy">
            <input type="hidden" name="_token" value="${_token}" />
        </form>

        <script>
        function confirmDestroy(){
            if(confirm("本当に削除してもよろしいですか？")){
                document.forms[1].submit();
            }
        }
        </script>
    </c:param>
</c:import>

