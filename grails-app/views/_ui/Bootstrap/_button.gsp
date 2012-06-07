<g:set var="modeClass" value="btn-${mode}"/>
<g:set var="disabledClass" value="${disabled ? 'disabled' : ''}"/>
<p:callTag tag="p:button" class="${p.joinClasses(values:[buttonClass,classes,modeClass,disabledClass])}" 
    kind="${kind}" attrs="${attrs}" bodyContent="${text}"/>
