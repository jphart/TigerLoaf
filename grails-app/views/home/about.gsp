
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="layout" content="main" />
  <g:set var="entityName" value="${message(code: 'laptop.label', default: 'Laptop')}" />
  <title><g:message code="app.name"/></title>
</head>
<body>
  <div class="nav">
    <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
  </div>
  <div class="body">

    <g:if test="${flash.message}">
      <div class="message">${flash.message}</div>
    </g:if>


    <h1>About</h1>
    <p>Knocked together by Jonathan Hart 4/2/2012.</p>
    
    <h2>Acknowledgments</h2>
    <p>Icons from the <a href="http://tango.freedesktop.org">Tango Project</a>. Laptop icon from <a href="http://quantum-bits.org/?page_id=3">Quantum Bits</a>.</p>

    <h2>Powered by</h2>
    <p><a href="http://grails.org">Grails</a> and <a href="http://groovy.codehaus.org">Groovy</a></p>
    
    <h2>Plugins</h2>
    <ul>
      <li><a href="http://grails.org/plugin/resources">Resources</a></li>
      <li><a href="http://grails.org/plugin/export">Export</a></li>
    </ul>
      
    
</body>
</html>
