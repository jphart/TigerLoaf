
<%@ page import="tigerloaf.item.Server" %>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="layout" content="main" />
  <g:set var="entityName" value="${message(code: 'server.label', default: 'Server')}" />
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

        <g:sortableColumn property="hostname" title="${message(code: 'server.hostname.label', default: 'Hostname')}" />

        <g:sortableColumn property="owner" title="${message(code: 'server.owner.label', default: 'Owner')}" />

        <g:sortableColumn property="project" title="${message(code: 'server.project.label', default: 'Project')}" />

        <g:sortableColumn property="description" title="${message(code: 'server.description.label', default: 'Description')}" />

        <g:sortableColumn property="dateBought" title="${message(code: 'server.dateBought.label', default: 'Date Bought')}" />

        <g:sortableColumn property="serialNumber" title="${message(code: 'server.serialNumber.label', default: 'Serial Number')}" />

        <g:sortableColumn property="manufacturer" title="${message(code: 'server.manufacturer.label', default: 'Manufacturer')}" />


        <g:sortableColumn property="machineType" title="${message(code: 'server.machineType.label', default: 'Machine Type')}" />

        <g:sortableColumn property="bin" title="${message(code: 'server.bin.label', default: 'Bin')}" />

        <g:sortableColumn property="investigate" title="${message(code: 'server.investigate.label', default: 'Investigate')}" />



        </tr>
        </thead>
        <tbody>
        <g:each in="${serverInstanceList}" status="i" var="serverInstance">
          <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">

            <td><g:link action="show" id="${serverInstance.id}">${fieldValue(bean: serverInstance, field: "hostname")}</g:link></td>


          <td>${fieldValue(bean: serverInstance, field: "owner")}</td>

          <td>${fieldValue(bean: serverInstance, field: "project")}</td>

          <td>${fieldValue(bean: serverInstance, field: "description")}</td>

          <td><g:formatDate date="${serverInstance.dateBought}" /></td>

          <td>${fieldValue(bean: serverInstance, field: "serialNumber")}</td>

          <td>${fieldValue(bean: serverInstance, field: "manufacturer")}</td>

          <td>${fieldValue(bean: serverInstance, field: "machineType")}</td>

          <td><g:formatBoolean boolean="${serverInstance.bin}" /></td>

          <td><g:formatBoolean boolean="${serverInstance.investigate}" /></td>

          </tr>
        </g:each>
        </tbody>
      </table>
    </div>
    <div class="paginateButtons">
      <g:paginate total="${serverInstanceTotal}" />
    </div>

    <g:if test="${serverInstanceTotal > 0}">
      <export:formats formats="['csv', 'excel']" />
    </g:if>
  </div>
</body>
</html>
