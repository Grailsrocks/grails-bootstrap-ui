modules = {
    overrides {
        'bootstrap-js' {
            dependsOn 'jquery'
        }
    }
    
    // Resources for your custom UI Set
    'ui.Bootstrap' {
        dependsOn 'bootstrap-css', 'bootstrap-tabs'
        
        resource id:'styling', url:[plugin:'bootstrap-ui', dir:'css', file:'styling.css']
        resource id:'hooks', url:[plugin:'bootstrap-ui', dir:'js', file:'bootstrap-hooks.js']
    }
}
