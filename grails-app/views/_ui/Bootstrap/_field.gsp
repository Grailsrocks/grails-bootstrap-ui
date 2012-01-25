<bean:inputTemplate>
${field}<g:if test="${errors}"><br/>${errors}</g:if>
</bean:inputTemplate>
<div class="${ui.joinClasses(values:[uiArgs.error ? 'error' : null, uiArgs.classes, 'clearfix'])}">
    <g:if test="${uiArgs.bean}">        
        <bean:label beanName="dummy" bean="${uiArgs.bean}" property="${uiArgs.name}" />
        <div class="input">
            <bean:field beanName="dummy" type="${uiArgs.type}" bean="${uiArgs.bean}" property="${uiArgs.name}" noLabel="${true}"/>
        </div>
    </g:if>
    <g:else>
        <label for="${uiArgs.name}">${uiArgs.label ? uiArgs.label.encodeAsHTML() : uiArgs.name.encodeAsHTML()}</label>
        <div class="input">
            <input class="${ui.joinClasses(values:[uiArgs.classes, uiArgs.error ? 'error' : ''])}" type="${uiArgs.type}" name="${uiArgs.name}" value="${uiArgs.value}"/>
            <span class="help-inline" class="${uiArgs.error ? 'error' : ''}" ><g:message code="field.hint.${uiArgs.name}" encodeAs="HTML"/></span>
        </div>
    </g:else>
</div>