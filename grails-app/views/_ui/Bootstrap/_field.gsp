<bean:inputTemplate>
${field}<g:if test="${errors}"><br/>${errors}</g:if>
</bean:inputTemplate>
<bean:selectTemplate>
${field}<g:if test="${errors}"><br/>${errors}</g:if>
</bean:selectTemplate>
<bean:checkBoxTemplate>
${field}<g:if test="${errors}"><br/>${errors}</g:if>
</bean:checkBoxTemplate>
<bean:radioTemplate>
${field}<g:if test="${errors}"><br/>${errors}</g:if>
</bean:radioTemplate>
<bean:textareaTemplate>
${field}<g:if test="${errors}"><br/>${errors}</g:if>
</bean:textareaTemplate>
<div class="control-group ${p.joinClasses(values:[invalid ? 'error' : null, classes])}">
    <g:if test="${beanObject}">        
        <div class="controls">
            <label for="${name}" class="control-label">${label.encodeAsHTML()}</label>
            <g:if test="${type == 'password'}">
                <bean:field type="password" beanName="dummy" bean="${beanObject}" property="${name}" noLabel="${true}"/>
            </g:if>
            <g:else>
                <bean:field beanName="dummy" bean="${beanObject}" property="${name}" noLabel="${true}"/>
            </g:else>
            <g:if test="${hint}">
                <span class="help-block ${invalid ? 'error' : ''}" >${hint.encodeAsHTML()}</span>
            </g:if>
        </div>
    </g:if>
    <g:else>
        <div class="controls">
            <label for="${name}" class="control-label">${label.encodeAsHTML()}</label>
            <input class="${p.joinClasses(values:[classes, invalid ? 'error' : ''])}" type="${type}" name="${name}" value="${value}"/>
            <g:if test="${hint}">
                <span class="help-block ${invalid ? 'error' : ''}" >${hint.encodeAsHTML()}</span>
            </g:if>
        </div>
    </g:else>
</div>