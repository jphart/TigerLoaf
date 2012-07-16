
<%@ page import="tigerloaf.item.Equipment" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'equipment.label', default: 'Equipment')}" />
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
                            <td valign="top" class="name"><g:message code="equipment.itemName.label" default="Item Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: equipmentInstance, field: "itemName")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="equipment.serialNumber.label" default="Serial Number" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: equipmentInstance, field: "serialNumber")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="equipment.owner.label" default="Owner" /></td>
                            
                            <td valign="top" class="value"><g:link controller="person" action="show" id="${equipmentInstance?.owner?.id}">${equipmentInstance?.owner?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="equipment.bin.label" default="Bin" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${equipmentInstance?.bin}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="equipment.description.label" default="Description" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: equipmentInstance, field: "description")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="equipment.function.label" default="Function" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: equipmentInstance, field: "function")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="equipment.dateBought.label" default="Date Bought" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${equipmentInstance?.dateBought}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="equipment.purchaser.label" default="Purchaser" /></td>
                            
                            <td valign="top" class="value"><g:link controller="person" action="show" id="${equipmentInstance?.purchaser?.id}">${equipmentInstance?.purchaser?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="equipment.project.label" default="Project" /></td>
                            
                            <td valign="top" class="value"><g:link controller="project" action="show" id="${equipmentInstance?.project?.id}">${equipmentInstance?.project?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="equipment.location.label" default="Location" /></td>
                            
                            <td valign="top" class="value"><g:link controller="location" action="show" id="${equipmentInstance?.location?.id}">${equipmentInstance?.location?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="equipment.detailedLocation.label" default="Detailed Location" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: equipmentInstance, field: "detailedLocation")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="equipment.comments.label" default="Comments" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: equipmentInstance, field: "comments")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${equipmentInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
