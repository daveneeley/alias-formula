# Alias formula

Formula to set up bash aliases for different users.

### Note

See the full [Salt Formulas installation and usage instructions](http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html)

Available states
================

- [alias](#alias)

``alias``
---------
Sets up the specified aliases from pillar data, which has is expected to be in the format specified bellow:

```
alias:
  root: # User which will have the alias
    vim: 'vi' # Aliases...
    ll: ls -l
    la: "ls -la"
  user2:
    alias2: 'command2'

```

``Tested platforms``
--------------------
This formula has only been tested in those Operating Systems:

* RHEL 5
* RHEL 6
* RHEL 7
