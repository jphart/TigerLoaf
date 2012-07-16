
<%@ page import="tigerloaf.item.Laptop" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'laptop.label', default: 'Laptop')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="laptop.name.label" default="Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: laptopInstance, field: "name")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="laptop.owner.label" default="Owner" /></td>
                            
                            <td valign="top" class="value"><g:link controller="person" action="show" id="${laptopInstance?.owner?.id}">${laptopInstance?.owner?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="laptop.classification.label" default="Classification" /></td>
                            
                            <td valign="top" class="value">${laptopInstance?.classification?.encodeAsHTML()}</td>
                            
                        </tr>
                    
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="laptop.manufacturer.label" default="Manufacturer" /></td>
                            
                            <td valign="top" class="value"><g:link controller="manufacturer" action="show" id="${laptopInstance?.manufacturer?.id}">${laptopInstance?.manufacturer?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="laptop.model.label" default="Model" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: laptopInstance, field: "model")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="laptop.serialNo.label" default="Serial No" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: laptopInstance, field: "serialNo")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="laptop.os.label" default="Os" /></td>
                            
                            <td valign="top" class="value"><g:link controller="operatingSystem" action="show" id="${laptopInstance?.os?.id}">${laptopInstance?.os?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="laptop.adminUsername.label" default="Admin Username" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: laptopInstance, field: "adminUsername")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="laptop.adminPassword.label" default="Admin Password" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: laptopInstance, field: "adminPassword")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="laptop.trueCryptPassword.label" default="True Crypt Password" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: laptopInstance, field: "trueCryptPassword")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="laptop.comments.label" default="Comments" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: laptopInstance, field: "comments")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${laptopInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
