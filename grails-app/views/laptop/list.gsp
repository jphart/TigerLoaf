
<%@ page import="tigerloaf.item.Laptop" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'laptop.label', default: 'Laptop')}" />
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
                                                
                            <g:sortableColumn property="name" title="${message(code: 'laptop.name.label', default: 'Name')}" />
                        
                            <th><g:message code="laptop.owner.label" default="Owner" /></th>
                        
                            <g:sortableColumn property="classification" title="${message(code: 'laptop.classification.label', default: 'Classification')}" />
                                                
                            <th><g:message code="laptop.manufacturer.label" default="Manufacturer" /></th>
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${laptopInstanceList}" status="i" var="laptopInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                                                
                            <td><g:link action="show" id="${laptopInstance.id}">${fieldValue(bean: laptopInstance, field: "name")}</g:link></td>
                        
                            <td>${fieldValue(bean: laptopInstance, field: "owner")}</td>
                        
                            <td>${fieldValue(bean: laptopInstance, field: "classification")}</td>
                                                
                            <td>${fieldValue(bean: laptopInstance, field: "manufacturer")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${laptopInstanceTotal}" />
            </div>
            <g:if test="${laptopInstanceTotal > 0}">
              <export:formats formats="['csv', 'excel']" />
            </g:if>
        </div>
    </body>
</html>
