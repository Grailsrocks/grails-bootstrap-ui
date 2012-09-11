<div id="${id}" class="${p.joinClasses(values:[carouselClass, classes])}">
    <div class="carousel-inner">
        <g:each in="${slides}" var="s">${s.bodyContent}</g:each>
    </div>
    <a class="carousel-control left" href="#${id}" data-slide="prev">&lsaquo;</a>
    <a class="carousel-control right" href="#${id}" data-slide="next">&rsaquo;</a>
</div>