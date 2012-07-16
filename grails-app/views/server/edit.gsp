

<%@ page import="tigerloaf.item.Server" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'server.label', default: 'Server')}" />
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
            <g:hasErrors bean="${serverInstance}">
            <div class="errors">
                <g:renderErrors bean="${serverInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${serverInstance?.id}" />
                <g:hiddenField name="version" value="${serverInstance?.version}" />
                <div class="dialog">
                     <table class="form">
          <tbody>

            <tr class="prop">
              <td valign="top" class="name">
                <label for="manufacturer"><g:message code="server.manufacturer.label" default="Manufacturer" /></label>
              </td>
              <td valign="top" class="value ${hasErrors(bean: serverInstance, field: 'manufacturer', 'errors')}">
          <g:select name="manufacturer.id" from="${tigerloaf.detail.Manufacturer.list()}" optionKey="id" value="${serverInstance?.manufacturer?.id}"  />
          </td>
          </tr>

          <tr class="prop">
            <td valign="top" class="name">
              <label for="machineType"><g:message code="server.machineType.label" default="Machine Type" /></label>
            </td>
            <td valign="top" class="value ${hasErrors(bean: serverInstance, field: 'machineType', 'errors')}">
          <g:textField name="machineType" maxlength="150" value="${serverInstance?.machineType}" />
          </td>
          </tr>

          <tr class="prop">
            <td valign="top" class="name">
              <label for="hostname"><g:message code="server.hostname.label" default="Hostname" /></label>
            </td>
            <td valign="top" class="value ${hasErrors(bean: serverInstance, field: 'hostname', 'errors')}">
          <g:textField name="hostname" maxlength="150" value="${serverInstance?.hostname}" />
          </td>
          </tr>

          <tr class="prop">
            <td valign="top" class="name">
              <label for="serialNumber"><g:message code="server.serialNumber.label" default="Serial Number" /></label>
            </td>
            <td valign="top" class="value ${hasErrors(bean: serverInstance, field: 'serialNumber', 'errors')}">
          <g:textField name="serialNumber" maxlength="150" value="${serverInstance?.serialNumber}" />
          </td>
          </tr>
          
          </tbody>
        </table>
        <table class="form">
          <tbody>
                    

          <tr class="prop">
            <td valign="top" class="name">
              <label for="bin"><g:message code="server.bin.label" default="Bin" /></label>
            </td>
            <td valign="top" class="value ${hasErrors(bean: serverInstance, field: 'bin', 'errors')}">
          <g:checkBox name="bin" value="${serverInstance?.bin}" />
          </td>
          </tr>

          <tr class="prop">
            <td valign="top" class="name">
              <label for="investigate"><g:message code="server.investigate.label" default="Investigate" /></label>
            </td>
            <td valign="top" class="value ${hasErrors(bean: serverInstance, field: 'investigate', 'errors')}">
          <g:checkBox name="investigate" value="${serverInstance?.investigate}" />
          </td>
          </tr>

         </tbody>
        </table>
        <table class="form">
          <tbody>


          <tr class="prop">
            <td valign="top" class="name">
              <label for="project"><g:message code="server.project.label" default="Project" /></label>
            </td>
            <td valign="top" class="value ${hasErrors(bean: serverInstance, field: 'project', 'errors')}">
          <g:select name="project.id" from="${tigerloaf.detail.Project.list()}" optionKey="id" value="${serverInstance?.project?.id}"  />
          </td>
          </tr>


          <tr class="prop">
            <td valign="top" class="name">
              <label for="owner"><g:message code="server.owner.label" default="Owner" /></label>
            </td>
            <td valign="top" class="value ${hasErrors(bean: serverInstance, field: 'owner', 'errors')}">
          <g:select name="owner.id" from="${tigerloaf.detail.Person.list()}" optionKey="id" value="${serverInstance?.owner?.id}"  />
          </td>
          </tr>

          <tr class="prop">
            <td valign="top" class="name">
              <label for="purchaser"><g:message code="server.purchaser.label" default="Purchaser" /></label>
            </td>
            <td valign="top" class="value ${hasErrors(bean: serverInstance, field: 'purchaser', 'errors')}">
          <g:select name="purchaser.id" from="${tigerloaf.detail.Person.list()}" optionKey="id" value="${serverInstance?.purchaser?.id}"  />
          </td>
          </tr>

          <tr class="prop">
            <td valign="top" class="name">
              <label for="dateBought"><g:message code="server.dateBought.label" default="Date Bought" /></label>
            </td>
            <td valign="top" class="value ${hasErrors(bean: serverInstance, field: 'dateBought', 'errors')}">
          <g:datePicker name="dateBought" precision="day" value="${serverInstance?.dateBought}"  />
          </td>
          </tr>



          <tr class="prop">
            <td valign="top" class="name">
              <label for="function"><g:message code="server.function.label" default="Function" /></label>
            </td>
            <td valign="top" class="value ${hasErrors(bean: serverInstance, field: 'function', 'errors')}">
          <g:textArea name="function" cols="40" rows="2" value="${serverInstance?.function}" />
          </td>
          </tr>
          
           <tr class="prop">
            <td valign="top" class="name">
              <label for="description"><g:message code="server.description.label" default="Description" /></label>
            </td>
            <td valign="top" class="value ${hasErrors(bean: serverInstance, field: 'description', 'errors')}">
          <g:textArea name="description" cols="40" rows="2" value="${serverInstance?.description}" />
          </td>
          </tr>
          
          </tbody>
        </table>
        <table class="form">
          <tbody>

          <tr class="prop">
            <td valign="top" class="name">
              <label for="location"><g:message code="server.location.label" default="Location" /></label>
            </td>
            <td valign="top" class="value ${hasErrors(bean: serverInstance, field: 'location', 'errors')}">
          <g:select name="location.id" from="${tigerloaf.detail.Location.list()}" optionKey="id" value="${serverInstance?.location?.id}"  />
          </td>
          </tr>

          <tr class="prop">
            <td valign="top" class="name">
              <label for="detailedLocation"><g:message code="server.detailedLocation.label" default="Detailed Location" /></label>
            </td>
            <td valign="top" class="value ${hasErrors(bean: serverInstance, field: 'detailedLocation', 'errors')}">
          <g:textField name="detailedLocation" maxlength="150" value="${serverInstance?.detailedLocation}" />
          </td>
          </tr>



          </tbody>
        </table>
        <table class="form">
          <tbody>



          <tr class="prop">
            <td valign="top" class="name">
              <label for="history"><g:message code="server.history.label" default="History" /></label>
            </td>
            <td valign="top" class="value ${hasErrors(bean: serverInstance, field: 'history', 'errors')}">
          <g:textArea name="history" cols="40" rows="5" value="${serverInstance?.history}" />
          </td>
          </tr>


          <tr class="prop">
            <td valign="top" class="name">
              <label for="comments"><g:message code="server.comments.label" default="Comments" /></label>
            </td>
            <td valign="top" class="value ${hasErrors(bean: serverInstance, field: 'comments', 'errors')}">
          <g:textArea name="comments" cols="40" rows="5" value="${serverInstance?.comments}" />
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
