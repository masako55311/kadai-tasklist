<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">

            <h2>No.${task.id}のタスクの編集ページ</h2>

            <form method="POST" action="${pageContext.request.contextPath}/update">
               <c:import url="update.jsp" />
            </form>

             <c:choose>
            <c:when test="${task != null}">
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
            </c:when>

            <c:when test="${task != null && errors == null}">
                <h2>お探しのデータは見つかりませんでした。</h2>
            </c:when>
        </c:choose>
    </c:param>
</c:import>

