<br/>
<g:if test="${title}">
<ui:h2>${title.encodeAsHTML()}</ui:h2>
</g:if>
<div class="row">
    <div class="well span-10">
        ${bodyContent}
    </div>
</div>