<bean:inputTemplate>
${field}<g:if test="${errors}"><br/>${errors}</g:if>
</bean:inputTemplate>
<div class="${ui.joinClasses(values:[invalid ? 'error' : null, classes, 'clearfix'])}">
    <g:if test="${beanObject}">        
        <bean:label beanName="dummy" bean="${beanObject}" property="${name}" />
        <div class="input">
            <bean:field beanName="dummy" bean="${beanObject}" property="${name}" noLabel="${true}"/>
        </div>
    </g:if>
    <g:else>
        <label for="${name}">${label ? label.encodeAsHTML() : name.encodeAsHTML()}</label>
        <div class="input">
            <input class="${ui.joinClasses(values:[classes, invalid ? 'error' : ''])}" type="${type}" name="${name}" value="${value}"/>
            <span class="help-inline" class="${invalid ? 'error' : ''}" ><g:message code="field.hint.${name}" encodeAs="HTML"/></span>
        </div>
    </g:else>
</div>