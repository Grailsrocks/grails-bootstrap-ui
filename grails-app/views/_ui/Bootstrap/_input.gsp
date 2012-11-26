<bean:inputTemplate>
${field}
</bean:inputTemplate>
<bean:selectTemplate>
${field}
</bean:selectTemplate>
<bean:checkBoxTemplate>
${field}
</bean:checkBoxTemplate>
<bean:radioTemplate>
${field}
</bean:radioTemplate>
<bean:textAreaTemplate>
${field}
</bean:textAreaTemplate>
<g:set var="type" value="${type ?: 'text'}"/>
<g:if test="${beanObject}">        
        <g:if test="${type == 'password'}">
            <bean:field type="password" beanName="dummy" bean="${beanObject}" property="${name}" noLabel="${true}"/>
        </g:if>
        <g:else>
            <bean:field type="${type}" beanName="dummy" bean="${beanObject}" property="${name}" noLabel="${true}"/>
        </g:else>
</g:if>
<g:else>
    <input id="${id.encodeAsHTML()}" class="${p.joinClasses(values:[classes, invalid ? 'error' : ''])}" type="${type}" name="${name}" value="${value}"/>
</g:else>
