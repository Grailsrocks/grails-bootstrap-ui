<g:set var="carouselId" value="${attrs.id ? 'id="'+attrs.id.encodeAsHTML()+'" ' : ''}"/>
<div ${carouselId}class="${p.joinClasses(values:[carouselClass, classes])}">
    <div class="carousel-inner">
        <g:each in="${slides}" var="s">${s.body}</g:each>
    </div>
    <a class="carousel-control left" href="#${attrs.id ? attrs.id.encodeAsHTML() : ''}" data-slide="prev">&lsaquo;</a>
    <a class="carousel-control right" href="#${attrs.id ? attrs.id.encodeAsHTML() : ''}" data-slide="next">&rsaquo;</a>
</div>