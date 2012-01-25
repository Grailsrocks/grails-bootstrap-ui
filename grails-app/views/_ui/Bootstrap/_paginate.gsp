<div class="pagination${uiArgs.classes}">
<ul>
    <li class="prev${uiArgs.prev.enabled ? '' : ' disabled'}"><a href="${uiArgs.prev.link ?: '#'}">${uiArgs.prev.text.encodeAsHTML()}</a></li>
    <g:each in="${uiArgs.items}" var="i">
        <g:if test="${i.earlier}">
            <li><a href="${i.link ?: '#'}">&ellips;</a></li>
        </g:if>
        <g:elseif test="${i.later}">
            <li><a href="${i.link ?: '#'}">&ellips;</a></li>
        </g:elseif>
        <g:elseif test="${i.active}">
            <li class="active"><a href="${i.link}">${i.text}</a></li>
        </g:elseif>
        <g:else>
            <li><a href="${i.link}">${i.text}</a></li>
        </g:else>
    </li>
    </g:each>
    <li class="next${uiArgs.next.enabled ? '' : ' disabled'}"><a href="${uiArgs.next.link ?: '#'}">${uiArgs.next.text.encodeAsHTML()}</a></li>
</ul>
</div>
