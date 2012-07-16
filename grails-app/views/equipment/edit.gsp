

<%@ page import="tigerloaf.item.Equipment" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'equipment.label', default: 'Equipment')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${equipmentInstance}">
            <div class="errors">
                <g:renderErrors bean="${equipmentInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${equipmentInstance?.id}" />
                <g:hiddenField name="version" value="${equipmentInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="itemName"><g:message code="equipment.itemName.label" default="Item Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: equipmentInstance, field: 'itemName', 'errors')}">
                                    <g:textField name="itemName" maxlength="150" value="${equipmentInstance?.itemName}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="serialNumber"><g:message code="equipment.serialNumber.label" default="Serial Number" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: equipmentInstance, field: 'serialNumber', 'errors')}">
                                    <g:textField name="serialNumber" maxlength="150" value="${equipmentInstance?.serialNumber}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="owner"><g:message code="equipment.owner.label" default="Owner" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: equipmentInstance, field: 'owner', 'errors')}">
                                    <g:select name="owner.id" from="${tigerloaf.detail.Person.list()}" optionKey="id" value="${equipmentInstance?.owner?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="bin"><g:message code="equipment.bin.label" default="Bin" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: equipmentInstance, field: 'bin', 'errors')}">
                                    <g:checkBox name="bin" value="${equipmentInstance?.bin}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="description"><g:message code="equipment.description.label" default="Description" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: equipmentInstance, field: 'description', 'errors')}">
                                    <g:textArea name="description" cols="40" rows="5" value="${equipmentInstance?.description}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="function"><g:message code="equipment.function.label" default="Function" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: equipmentInstance, field: 'function', 'errors')}">
                                    <g:textArea name="function" cols="40" rows="5" value="${equipmentInstance?.function}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="dateBought"><g:message code="equipment.dateBought.label" default="Date Bought" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: equipmentInstance, field: 'dateBought', 'errors')}">
                                    <g:datePicker name="dateBought" precision="day" value="${equipmentInstance?.dateBought}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="purchaser"><g:message code="equipment.purchaser.label" default="Purchaser" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: equipmentInstance, field: 'purchaser', 'errors')}">
                                    <g:select name="purchaser.id" from="${tigerloaf.detail.Person.list()}" optionKey="id" value="${equipmentInstance?.purchaser?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="project"><g:message code="equipment.project.label" default="Project" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: equipmentInstance, field: 'project', 'errors')}">
                                    <g:select name="project.id" from="${tigerloaf.detail.Project.list()}" optionKey="id" value="${equipmentInstance?.project?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="location"><g:message code="equipment.location.label" default="Location" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: equipmentInstance, field: 'location', 'errors')}">
                                    <g:select name="location.id" from="${tigerloaf.detail.Location.list()}" optionKey="id" value="${equipmentInstance?.location?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="detailedLocation"><g:message code="equipment.detailedLocation.label" default="Detailed Location" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: equipmentInstance, field: 'detailedLocation', 'errors')}">
                                    <g:textField name="detailedLocation" maxlength="150" value="${equipmentInstance?.detailedLocation}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="comments"><g:message code="equipment.comments.label" default="Comments" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: equipmentInstance, field: 'comments', 'errors')}">
                                    <g:textArea name="comments" cols="40" rows="5" value="${equipmentInstance?.comments}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
