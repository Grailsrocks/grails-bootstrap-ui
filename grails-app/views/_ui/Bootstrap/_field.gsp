<div class="control-group ${p.joinClasses(values:[invalid ? invalidClass : null, classes])}">
    <div class="controls">
        <g:if test="${customLabel}">
            ${customLabel}
        </g:if>
        <g:else>
            <label for="${name}">${label.encodeAsHTML()}</label>
        </g:else>

        <g:if test="${customInput}">
            ${customInput}
        </g:if>
        <g:else>
            ${input}
        </g:else>

        <g:if test="${customErrors}">
            ${customErrors}
        </g:if>
        <g:elseif test="${errors}">
            <g:each in="${errors}" var="err">
                <span class="error">${err.encodeAsHTML()}</span>
            </g:each>
        </g:elseif>

        <g:if test="${customHint}">
            ${customHint}
        </g:if>
        <g:elseif test="${hint}">
            <span class="help-hint">${hint.encodeAsHTML()}</span>
        </g:elseif>
    </div>
</div>
    