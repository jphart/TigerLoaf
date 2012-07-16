
<%@ page import="tigerloaf.item.Server" %>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="layout" content="main" />
  <g:set var="entityName" value="${message(code: 'server.label', default: 'Server')}" />
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
      <table class="form">
        <tbody>


          <tr class="prop">
            <td valign="top" class="name"><g:message code="server.manufacturer.label" default="Manufacturer" /></td>

        <td valign="top" class="value"><g:link controller="manufacturer" action="show" id="${serverInstance?.manufacturer?.id}">${serverInstance?.manufacturer?.encodeAsHTML()}</g:link></td>

        </tr>

        <tr class="prop">
          <td valign="top" class="name"><g:message code="server.machineType.label" default="Machine Type" /></td>

        <td valign="top" class="value">${fieldValue(bean: serverInstance, field: "machineType")}</td>

        </tr>

        <tr class="prop">
          <td valign="top" class="name"><g:message code="server.hostname.label" default="Hostname" /></td>

        <td valign="top" class="value">${fieldValue(bean: serverInstance, field: "hostname")}</td>

        </tr>


        <tr class="prop">
          <td valign="top" class="name"><g:message code="server.serialNumber.label" default="Serial Number" /></td>

        <td valign="top" class="value">${fieldValue(bean: serverInstance, field: "serialNumber")}</td>

        </tr>

        </tbody>
      </table>
      <table class="form">
        <tbody>


          <tr class="prop">
            <td valign="top" class="name"><g:message code="server.bin.label" default="Bin" /></td>

        <td valign="top" class="value"><g:formatBoolean boolean="${serverInstance?.bin}" /></td>

        </tr>
        
                <tr class="prop">
          <td valign="top" class="name"><g:message code="server.investigate.label" default="Investigate" /></td>

        <td valign="top" class="value"><g:formatBoolean boolean="${serverInstance?.investigate}" /></td>

        </tr>
        
        
              </tbody>
      </table>
      <table class="form">
        <tbody>
          
          
          <tr class="prop">
          <td valign="top" class="name"><g:message code="server.project.label" default="Project" /></td>

        <td valign="top" class="value"><g:link controller="project" action="show" id="${serverInstance?.project?.id}">${serverInstance?.project?.encodeAsHTML()}</g:link></td>

        </tr>
        
        <tr class="prop">
          <td valign="top" class="name"><g:message code="server.owner.label" default="Owner" /></td>

        <td valign="top" class="value"><g:link controller="person" action="show" id="${serverInstance?.owner?.id}">${serverInstance?.owner?.encodeAsHTML()}</g:link></td>

        </tr>

        <tr class="prop">
          <td valign="top" class="name"><g:message code="server.purchaser.label" default="Purchaser" /></td>

        <td valign="top" class="value"><g:link controller="person" action="show" id="${serverInstance?.purchaser?.id}">${serverInstance?.purchaser?.encodeAsHTML()}</g:link></td>

        </tr>
        
        <tr class="prop">
          <td valign="top" class="name"><g:message code="server.dateBought.label" default="Date Bought" /></td>

        <td valign="top" class="value"><g:formatDate date="${serverInstance?.dateBought}" /></td>

        </tr>
         
        <tr class="prop">
          <td valign="top" class="name"><g:message code="server.function.label" default="Function" /></td>

        <td valign="top" class="value">${fieldValue(bean: serverInstance, field: "function")}</td>

        </tr>

        <tr class="prop">
          <td valign="top" class="name"><g:message code="server.description.label" default="Description" /></td>

        <td valign="top" class="value">${fieldValue(bean: serverInstance, field: "description")}</td>

        </tr>

                      </tbody>
      </table>
      <table class="form">
        <tbody>





        <tr class="prop">
          <td valign="top" class="name"><g:message code="server.location.label" default="Location" /></td>

        <td valign="top" class="value"><g:link controller="location" action="show" id="${serverInstance?.location?.id}">${serverInstance?.location?.encodeAsHTML()}</g:link></td>

        </tr>

        <tr class="prop">
          <td valign="top" class="name"><g:message code="server.detailedLocation.label" default="Detailed Location" /></td>

        <td valign="top" class="value">${fieldValue(bean: serverInstance, field: "detailedLocation")}</td>

        </tr>
        
                      </tbody>
      </table>
      <table class="form">
        <tbody>

        <tr class="prop">
          <td valign="top" class="name"><g:message code="server.comments.label" default="Comments" /></td>

        <td valign="top" class="value">${fieldValue(bean: serverInstance, field: "comments")}</td>

        </tr>

        <tr class="prop">
          <td valign="top" class="name"><g:message code="server.history.label" default="History" /></td>

        <td valign="top" class="value">${fieldValue(bean: serverInstance, field: "history")}</td>

        </tr>



        </tbody>
      </table>
    </div>
    <div class="buttons">
      <g:form>
        <g:hiddenField name="id" value="${serverInstance?.id}" />
        <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
        <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
      </g:form>
    </div>
  </div>
</body>
</html>
