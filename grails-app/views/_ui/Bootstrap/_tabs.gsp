<ul class="tabs${uiArgs.classes}" ${ui.attributes()}>
<g:each in="${uiArgs.tabs}" var="t">   <li${t == uiArgs.active ? ' class="active"' : ''}><a href="#${t.encodeAsHTML()}"><g:message code="${uiArgs.prefix ? uiArgs.prefix+'.'+t : t}" encodeAs="HTML"/></a></li>
</g:each></ul>
<div class="tab-content">
    <g:each in="${uiArgs.tabBodies}" var="b">${b}</g:each>
</div>