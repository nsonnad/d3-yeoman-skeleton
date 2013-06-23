define(['d3'], (d3) ->

    applyData = (data) =>
        margin = { t : 20, r : 20, b : 20, l : 20 }
        # width below for responsive purposes
        h = window.innerHeight - margin.t - margin.b

        # uncomment for custom colors
        # colors = ['#fff', '#000']
        # colorScale = d3.scale.ordinal().range(colors)
        colorScale = d3.scale.category20c()

        svg = d3.select('#chart').append('svg')
            .attr('height', h + margin.t + margin.b)

        svg.selectAll('.groups')
            .data(data)
        .enter().append('g')
            .attr('class', 'groups')

        redraw = () ->
            w = window.innerWidth - margin.l - margin.r
            svg.attr('attribute', w + margin.l + margin.r)


        # debounce on window resize
        debouncer = (func, timeout) ->
            timeout = timeout || 200;
            timeoutID = null

            return ->
                scope = this
                args = arguments

                clearTimeout(timeoutID)
                timeoutID = setTimeout(
                    ->
                        func.apply(
                            scope,
                            Array.prototype.slice.call(args)
                        )
                    timeout
                )

        _redraw = debouncer(redraw, 75)

        window.onresize = () ->
            _redraw()

        _redraw()

    return { applyData: applyData }
)