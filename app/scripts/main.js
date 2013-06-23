require.config({
    paths: {
        d3: '../bower_components/d3/d3'
    },
    shim: {
        d3: {
            exports: 'd3'
        }
    }
});

require(['loadData'], function (loadData) {
    'use strict';
    loadData;
});