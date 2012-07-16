
<%@ page import="tigerloaf.item.Equipment" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'equipment.label', default: 'Equipment')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                       
                            <g:sortableColumn property="itemName" title="${message(code: 'equipment.itemName.label', default: 'Item Name')}" />
                        
                            <g:sortableColumn property="serialNumber" title="${message(code: 'equipment.serialNumber.label', default: 'Serial Number')}" />
                        
                           <g:sortableColumn property="owner" title="${message(code: 'server.owner.label', default: 'Owner')}" />

                            
                            <g:sortableColumn property="project" title="${message(code: 'server.project.label', default: 'Project')}" />
                        
                            <g:sortableColumn property="bin" title="${message(code: 'equipment.bin.label', default: 'Bin')}" />
                        
                            <g:sortableColumn property="description" title="${message(code: 'equipment.description.label', default: 'Description')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${equipmentInstanceList}" status="i" var="equipmentInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                                                
                            <td><g:link action="show" id="${equipmentInstance.id}">${fieldValue(bean: equipmentInstance, field: "itemName")}</g:link></td>
                        
                            <td>${fieldValue(bean: equipmentInstance, field: "serialNumber")}</td>
                        
                            <td>${fieldValue(bean: equipmentInstance, field: "owner")}</td>
                            
                             <td>${fieldValue(bean: equipmentInstance, field: "project")}</td>
                        
                            <td><g:formatBoolean boolean="${equipmentInstance.bin}" /></td>
                        
                            <td>${fieldValue(bean: equipmentInstance, field: "description")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${equipmentInstanceTotal}" />
            </div>
            <g:if test="${equipmentInstanceTotal > 0}">
              <export:formats formats="['csv', 'excel']" />
            </g:if>
        </div>
    </body>
</html>
