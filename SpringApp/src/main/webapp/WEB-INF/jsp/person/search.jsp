<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<h1><spring:message code="person.search.title"/></h1>

<table class="search">
    <tr>
        <th><spring:message code="person.form.firstName"/></th>
        <th><spring:message code="person.form.lastName"/></th>
    </tr>
<c:forEach var="person" items="${persons}" varStatus="status">
    <tr>
        <c:set var="personFormId" value="person${status.index}"/>

        <c:url var="editUrl" value="/person/form.html">
            <c:param name="id" value="${person.id}" />
        </c:url>
        <c:url var="deleteUrl" value="/person/delete.html"/>
        <form id="${personFormId}" action="${deleteUrl}" method="POST">
            <input id="id" name="id" type="hidden" value="${person.id}"/>
        </form>

        <td>${person.firstName}</td>
        <td>${person.lastName}</td> 
        <td>
            <a href='<c:out value="${editUrl}"/>'><spring:message code="button.edit"/></a>
            <a href="javascript:document.forms['${personFormId}'].submit();"><spring:message code="button.delete"/></a> 
        </td>
    </tr>
</c:forEach>
</table>