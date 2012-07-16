

<%@ page import="tigerloaf.item.Laptop" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'laptop.label', default: 'Laptop')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${laptopInstance}">
            <div class="errors">
                <g:renderErrors bean="${laptopInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name"><g:message code="laptop.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: laptopInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" maxlength="150" value="${laptopInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="owner"><g:message code="laptop.owner.label" default="Owner" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: laptopInstance, field: 'owner', 'errors')}">
                                    <g:select name="owner.id" from="${tigerloaf.detail.Person.list()}" optionKey="id" value="${laptopInstance?.owner?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="classification"><g:message code="laptop.classification.label" default="Classification" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: laptopInstance, field: 'classification', 'errors')}">
                                    <g:select name="classification" from="${tigerloaf.detail.ClassificationEnum?.values()}" keys="${tigerloaf.detail.ClassificationEnum?.values()*.name()}" optionValue="name" value="${laptopInstance?.classification?.name()}"  />
                                </td>
                            </tr>
                        
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="manufacturer"><g:message code="laptop.manufacturer.label" default="Manufacturer" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: laptopInstance, field: 'manufacturer', 'errors')}">
                                    <g:select name="manufacturer.id" from="${tigerloaf.detail.Manufacturer.list()}" optionKey="id" value="${laptopInstance?.manufacturer?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="model"><g:message code="laptop.model.label" default="Model" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: laptopInstance, field: 'model', 'errors')}">
                                    <g:textField name="model" maxlength="150" value="${laptopInstance?.model}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="serialNo"><g:message code="laptop.serialNo.label" default="Serial No" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: laptopInstance, field: 'serialNo', 'errors')}">
                                    <g:textField name="serialNo" maxlength="150" value="${laptopInstance?.serialNo}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="os"><g:message code="laptop.os.label" default="Os" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: laptopInstance, field: 'os', 'errors')}">
                                    <g:select name="os.id" from="${tigerloaf.detail.OperatingSystem.list()}" optionKey="id" value="${laptopInstance?.os?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="adminUsername"><g:message code="laptop.adminUsername.label" default="Admin Username" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: laptopInstance, field: 'adminUsername', 'errors')}">
                                    <g:textField name="adminUsername" maxlength="150" value="${laptopInstance?.adminUsername}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="adminPassword"><g:message code="laptop.adminPassword.label" default="Admin Password" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: laptopInstance, field: 'adminPassword', 'errors')}">
                                    <g:textField name="adminPassword" maxlength="150" value="${laptopInstance?.adminPassword}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="trueCryptPassword"><g:message code="laptop.trueCryptPassword.label" default="True Crypt Password" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: laptopInstance, field: 'trueCryptPassword', 'errors')}">
                                    <g:textField name="trueCryptPassword" maxlength="150" value="${laptopInstance?.trueCryptPassword}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="comments"><g:message code="laptop.comments.label" default="Comments" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: laptopInstance, field: 'comments', 'errors')}">
                                    <g:textArea name="comments" cols="40" rows="5" value="${laptopInstance?.comments}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
