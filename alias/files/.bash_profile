{%- set alias = salt['pillar.get']('alias') -%}
# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

# User specific aliases

{%- for key, value in pillar['alias'][user].iteritems() %}
alias {{ key }}="{{ value }}"
{%- endfor %}

export PATH
