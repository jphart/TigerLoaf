
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="layout" content="main" />
  <g:set var="entityName" value="${message(code: 'laptop.label', default: 'Laptop')}" />
  <title><g:message code="app.name"/></title>
</head>
<body>
  <div class="nav">
    &nbsp;
  </div>
  <div class="body">

    <div id="sidePanel">
      <div class="homePagePanel">
        <div class="panelTop"></div>
        <div class="panelBody">
          <h1>Configuration</h1>
          <ul>
            <li><a href="${createLink(controller: 'person', action:'list')}">People</a></li>
            <li><a href="${createLink(controller: 'project', action:'list')}">Projects</a></li>
            <li><a href="${createLink(controller: 'customer', action:'list')}">Customers</a></li>
            <li><a href="${createLink(controller: 'location', action:'list')}">Locations</a></li>
            <li><a href="${createLink(controller: 'manufacturer', action:'list')}">Manufacturers</a></li>
            <li><a href="${createLink(controller: 'operatingSystem', action:'list')}">Operating Systems</a></li>
          </ul>

          <ul>
            <li><a href="${createLink(controller: 'home', action:'about')}">About</a></li>
          </ul>
        </div>
        <div class="panelBtm"></div>
      </div>
    </div>


    <g:if test="${flash.message}">
      <div class="message">${flash.message}</div>
    </g:if>


    <h1>Assets</h1>

    <ul class="quicklinks">
      <li><a href="${createLink(controller: 'laptop', action:'list')}"><img src="images/computer-laptop-apple-powerbook.png" width="128" height="120" />Laptops</a></li>
      <li><a href="${createLink(controller: 'server', action:'list')}"><img src="images/network-server.png" width="128" height="120" />Servers</a></li>
      <li><a href="${createLink(controller: 'equipment', action:'list')}"><img src="images/video-display.png" width="128" height="120" />Equipment</a></li>
    </ul>

</body>
</html>
