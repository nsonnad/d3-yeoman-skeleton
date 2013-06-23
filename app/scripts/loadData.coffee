define(['d3', 'draw'], (d3, draw) ->
    # load data here
    d3.json('../data/sample.json', (json) ->

        draw.applyData(json)

    )
)