<div class="${p.joinClasses(values:['alert','alert-block', classes, 'alert-'+[info:'info', error:'error', debug:'info', warning:'warning'][type]])}" ${ui.attributes()}>
    <a class="close" data-dismiss="alert" href="#">×</a>
    ${bodyContent}
</div>
