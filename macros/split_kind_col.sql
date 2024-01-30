{% macro split_kind_col(column_name) %}
    (SPLIT({{ column_name }}, '#'))
{% endmacro %}