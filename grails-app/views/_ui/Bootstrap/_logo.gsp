<%--
  Tag: ui.logo
  Usage: Render application logo image at default or fixed size
  
  Available variables:
  
  classes - String of classes supplied
  logoClass - Class to apply to the logo element
  uiArgs
--%>
<g:set var="logoSizeClass" value="${logoClass+(width?:'')+'x'+(height?:'')}"/>
<g:if test="${logoUri}">
    <a href="${p.siteURL().encodeAsHTML()}"><r:img uri="${logoUri.encodeAsHTML()}" class="${p.joinClasses(values:[classes, logoClass, logoSizeClass])}" alt="${applicationName.encodeAsHTML()}" width="${width}" height="${height}"/></a>
</g:if>
<g:else>
    <a href="${p.siteURL().encodeAsHTML()}" class="${classes}"><h1>${applicationName.encodeAsHTML()}</h1></a>
</g:else>
