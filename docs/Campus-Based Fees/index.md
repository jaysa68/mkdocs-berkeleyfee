

```vegalite 
{
  "$schema": "https://vega.github.io/schema/vega/v6.0.json",
  "width": 400,
  "height": 400,
  "autosize": "pad",
  "signals": [
    {"name": "startAngle", "value": 0},
    {"name": "endAngle", "value": 6.29},
    {"name": "padAngle", "value": 0},
    {"name": "sort", "value": true},
    {"name": "strokeWidth", "value": 2},
    {
      "name": "selected",
      "value": "",
      "on": [{"events": "mouseover", "update": "datum"}]
    }
  ],
  "data": [
    {
      "name": "table",
      "values": [
        {"continent": "Africa", "population": 1216130000},
        {"continent": "Asia", "population": 4436224000},
        {"continent": "Europe", "population": 738849000},
        {"continent": "North America", "population": 579024000},
        {"continent": "Oceania", "population": 39901000},
        {"continent": "South America", "population": 422535000}
      ],
      "transform": [
        {
          "type": "pie",
          "field": "population",
          "startAngle": {"signal": "startAngle"},
          "endAngle": {"signal": "endAngle"},
          "sort": {"signal": "sort"}
        }
      ]
    },
    {
      "name": "fieldSum",
      "source": "table",
      "transform": [
        {
          "type": "aggregate",
          "fields": ["population"],
          "ops": ["sum"],
          "as": ["sum"]
        }
      ]
    }
  ],
  "legends": [
    {
      "fill": "color",
      "title": "Legends",
      "orient": "none",
      "padding": {"value": 10},
      "encode": {
        "symbols": {"enter": {"fillOpacity": {"value": 1}}},
        "legend": {
          "update": {
            "x": {
              "signal": "(width / 2) + if(selected && selected.continent == datum.continent, if(width >= height, height, width) / 2 * 1.1 * 0.8, if(width >= height, height, width) / 2 * 0.8)",
              "offset": 20
            },
            "y": {"signal": "(height / 2)", "offset": -50}
          }
        }
      }
    }
  ],
  "scales": [
    {"name": "color", "type": "ordinal", "range": {"scheme": "category20"}}
  ],
  "marks": [
    {
      "type": "arc",
      "from": {"data": "table"},
      "encode": {
        "enter": {
          "fill": {"scale": "color", "field": "continent"},
          "x": {"signal": "width / 2"},
          "y": {"signal": "height / 2"}
        },
        "update": {
          "startAngle": {"field": "startAngle"},
          "endAngle": {"field": "endAngle"},
          "padAngle": {
            "signal": "if(selected && selected.continent == datum.continent, 0.015, 0.015)"
          },
          "innerRadius": {
            "signal": "if(selected && selected.continent == datum.continent, if(width >= height, height, width) / 2 * 0.45, if(width >= height, height, width) / 2 * 0.5)"
          },
          "outerRadius": {
            "signal": "if(selected && selected.continent == datum.continent, if(width >= height, height, width) / 2 * 1.05 * 0.8, if(width >= height, height, width) / 2 * 0.8)"
          },
          "opacity": {
            "signal": "if(selected && selected.continent !== datum.continent, 1, 1)"
          },
          "stroke": {"signal": "scale('color', datum.continent)"},
          "strokeWidth": {"signal": "strokeWidth"},
          "fillOpacity": {
            "signal": "if(selected && selected.continent == datum.continent, 0.8, 0.8)"
          }
        }
      }
    },
    {
      "type": "text",
      "encode": {
        "enter": {"fill": {"value": "#525252"}, "text": {"value": ""}},
        "update": {
          "opacity": {"value": 1},
          "x": {"signal": "width / 2"},
          "y": {"signal": "height / 2"},
          "align": {"value": "center"},
          "baseline": {"value": "middle"},
          "fontSize": {"signal": "if(width >= height, height, width) * 0.05"},
          "text": {"value": "World Population"}
        }
      }
    },
    {
      "name": "mark_population",
      "type": "text",
      "from": {"data": "table"},
      "encode": {
        "enter": {
          "text": {
            "signal": "if(datum['endAngle'] - datum['startAngle'] < 0.3, '', format(datum['population'] / 1e9, '.2f'))"
          },
          "x": {"signal": "if(width >= height, height, width) / 2"},
          "y": {"signal": "if(width >= height, height, width) / 2"},
          "radius": {
            "signal": "if(selected && selected.continent == datum.continent, if(width >= height, height, width) / 2 * 1.05 * 0.65, if(width >= height, height, width) / 2 * 0.65)"
          },
          "theta": {"signal": "(datum['startAngle'] + datum['endAngle'])/2"},
          "fill": {"value": "#FFFFFF"},
          "fontSize": {"value": 12},
          "align": {"value": "center"},
          "baseline": {"value": "middle"}
        }
      }
    }
  ]
}
```


## Lower Sproul Plaza Fee
### $306.00

The Lower Sproul Plaza fee is continuing to fund the transformation of Lower Sproul Plaza into the vibrant, student-oriented space it is today. The project addressed physical deficiencies, added new facilities and services, and enhanced outdoor amenities. The revitalized Plaza offers 24-hour study spaces, multicultural community centers, performance venues, and more, fostering a more engaging student environment. It began in 2010 at a rate of $35 per semester and will periodically increase each year until it reaches its maximum of $396 in 2041, continuing until the outstanding debt is paid (estimated to be 2046).

## Wellness Fee
**$225.50**

## Campus Health Care Fee
**$92.75**

## Life Safety Fee
**$46.00**

## Associated Students of University of California (ASUC) Fee
**$34.00 (Undergraduates Only)**

The ASUC Fee is distributed by the Associated Students of the University of California, the main student governing body of UC Berkeley. The majority of the funding is used to sponsor registered student organizations (RSOs) at UC Berkeley. These organizations offer the opportunity for students to explore and expand upon their academic and recreational interests and play a key role in the student experience at Berkeley.

## Graduate Assembly Fee
**$33.00 (Graduate Students Only)**

## Campus Climate & Equity (Big C) Fee
**$33.00**

## Recruitment and Retention (STARR) Fee
**$28.75**

## Student Center Fee
**$6.00**

## Educational Opportunity & Equity (GOLD) Fee
**$20.75**

## Student Basic Needs Fee
**$17.25**

## The Green Initiative Fund (TGIF) Fee
**$10.00**

## Save the Daily Cal Initiative (V.O.I.C.E) Fee
**$6.00**

## Housing Security Fee
**$4.50**

## Ethnic Studies Fee
**$2.25**


Sources:
[Berkeley Registrar](https://registrar.berkeley.edu/tuition-fees/fee-definitions/)


