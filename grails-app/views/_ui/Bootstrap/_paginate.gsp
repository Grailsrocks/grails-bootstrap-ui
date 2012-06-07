<div class="pagination${classes}">
<ul>
    <g:if test="${prev}">
        <li class="prev${prev.enabled ? '' : ' disabled'}"><a href="${prev.link ?: '#'}">${prev.text.encodeAsHTML()}</a></li>
    </g:if>
    <g:each in="${items}" var="i">
        <g:if test="${i.earlier}">
            <li><a href="${i.link ?: '#'}">&ellips;</a></li>
        </g:if>
        <g:elseif test="${i.later}">
            <li><a href="${i.link ?: '#'}">&ellips;</a></li>
        </g:elseif>
        <g:elseif test="${i.active}">
            <li class="active"><a href="${i.link}">${i.text.encodeAsHTML()}</a></li>
        </g:elseif>
        <g:else>
            <li><a href="${i.link}">${i.text.encodeAsHTML()}</a></li>
        </g:else>
    </li>
    </g:each>
    <g:if test="${next}">
        <li class="next${next.enabled ? '' : ' disabled'}"><a href="${next.link ?: '#'}">${next.text.encodeAsHTML()}</a></li>
    </g:if>
</ul>
</div>
