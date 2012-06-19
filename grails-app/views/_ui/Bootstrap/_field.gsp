<bean:inputTemplate>
${field}<g:if test="${errors}"><br/>${errors}</g:if>
</bean:inputTemplate>
<div class="control-group ${p.joinClasses(values:[invalid ? 'error' : null, classes])}">
    <g:if test="${beanObject}">        
        <bean:label beanName="dummy" bean="${beanObject}" property="${name}" labelClass="control-label"/>
        <div class="controls">
            <g:if test="${type == 'password'}">
                <bean:field type="password" beanName="dummy" bean="${beanObject}" property="${name}" noLabel="${true}"/>
            </g:if>
            <g:else>
                <bean:field beanName="dummy" bean="${beanObject}" property="${name}" noLabel="${true}"/>
            </g:else>
        </div>
    </g:if>
    <g:else>
        <label for="${name}" class="control-label">${label ? label.encodeAsHTML() : name.encodeAsHTML()}</label>
        <div class="controls">
            <input class="${p.joinClasses(values:[classes, invalid ? 'error' : ''])}" type="${type}" name="${name}" value="${value}"/>
            <span class="help-block" class="${invalid ? 'error' : ''}" ><g:message code="field.hint.${name}" encodeAs="HTML"/></span>
        </div>
    </g:else>
</div>