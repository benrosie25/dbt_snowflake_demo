{% macro get_date_parts(date_column) %}

    /*( SELECT struct (
        {{ date_column }} AS original_date,
        EXTRACT(YEAR FROM {{ date_column }}) AS year,
        EXTRACT(MONTH FROM {{ date_column }}) AS month,
        EXTRACT(DAY FROM {{ date_column }}) AS day,
        EXTRACT(DAYOFWEEK FROM {{ date_column }}) AS day_of_week,
        EXTRACT(DAYOFYEAR FROM {{ date_column }}) AS day_of_year,
        EXTRACT(WEEK FROM {{ date_column }}) AS week,
        EXTRACT(QUARTER FROM {{ date_column }}) AS quarter ) as extract_date
   )*/
     
        date_part(year from {{ date_column }}) as year,
        date_part(month from {{ date_column }}) as month,
        date_part(day from {{ date_column }}) as day,
        date_part(dayofweek from {{ date_column }}) as day_of_week,
        date_part(dayofyear from {{ date_column }}) as day_of_year,
        date_part(week from {{ date_column }}) as week,
        date_part(quarter from {{ date_column }}) as quarter

{% endmacro %}
