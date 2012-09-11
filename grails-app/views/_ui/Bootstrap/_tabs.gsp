<ul class="${p.joinClasses(values:[tabsClass, classes])}" ${ui.attributes()}>
<g:each in="${tabs}" var="t">   <li${t.active ? ' class="active"' : ''}><a href="#${t.id.encodeAsHTML()}"><g:message code="${prefix ? prefix+'.'+t.title : t.title}" encodeAs="HTML"/></a></li>
</g:each></ul>
<div class="tab-content">
    <g:each in="${tabs}" var="t">${t.bodyContent}</g:each>
</div>