{%- set alias = salt['pillar.get']('alias') -%}

{%- set profile = '.bash_profile' %}

{% for user in alias %}

  {%- if user == 'root' %}
    {%- set home = '/root' %}
  {%- else %}
    {%- set home = "/home/"~user %}
  {% endif %}

alias_bash_profile_{{ user }}:
  file.managed:
    - name: {{ home }}/{{ profile }}
    - source: salt://alias/files/.bash_profile
    - user: {{ user }}
    - template: jinja
    - context:
        user: {{ user }}

{% endfor %}
