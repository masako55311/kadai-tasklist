<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="../layout/app.jsp">
    <c:param name="content">
    <h2>新規タスクの登録</h2>
    <form method="post" action="${pageContext.request.contextPath}/create">
        <c:if test="${errors != null}">
         <div id="flush_error">
                           入力内容にエラーがあります。<br />
            <c:forEach var="error" items="${errors}">
                                     ★★★<c:out value="${error}" />★★★<br />
            </c:forEach>
         </div>
        </c:if>
        <label for="content">タスク</label><br />
        <input type="text" name="content" value="${task.content}" />
        <br /><br />

        <input type="hidden" name="_token" value="${_token}" />
        <button type="submit">タスクの追加</button>
    </form>

    <p><a href="${pageContext.request.contextPath}/index">一覧にもどる</a></p>
    </c:param>
</c:import>