{% macro convert_milliseconds(column_name, unit="seconds") %}
    {% if unit == "seconds" %}
    (sum( {{ column_name }} ) // 1000) as total_seconds
    {% elif unit == "minutes" %}
    (sum( {{ column_name }} ) // 1000 // 60) as total_minutes
    -- {% elif unit == "hours" %}
    -- (sum({{ column_name}}) // 1000 // 60 // 60)
    -- {% elif unit == "days" %}
    -- (sum({{ column_name}}) // 1000 // 60 // 60 // 24)
    -- {% elif unit == "weeks" %}
    -- (sum({{ column_name}}) // 1000 // 60 // 60 // 24 // 7)
    -- {% elif unit == "years" %}
    -- (sum({{ column_name}}) // 1000 // 60 // 60 // 24 // 365.25)
    {% else %}
    (sum({{ column_name }}))
    {% endif %}
{% endmacro %}
