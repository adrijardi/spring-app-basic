<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<h1><spring:message code="person.form.title"/></h1>

<c:if test="${not empty statusMessageKey}">
    <p><spring:message code="${statusMessageKey}"/></p>
</c:if>

<c:url var="url" value="/person/form.html" /> 
<form:form action="${url}" commandName="person">
    <form:hidden path="id" />

    <fieldset>
        <div class="form-row">
            <label for="firstName"><spring:message code="person.form.firstName"/>:</label>
            <span class="input"><form:input path="firstName" /></span>
        </div>       
        <div class="form-row">
            <label for="lastName"><spring:message code="person.form.lastName"/>:</label>
            <span class="input"><form:input path="lastName" /></span>
        </div>
        <div class="form-buttons">
        <spring:message code="button.save" var="msg" />
            <div class="button"><input name="submit" type="submit" value="${msg}" /></div>
        </div>
    </fieldset>
</form:form>