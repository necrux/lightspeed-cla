# Red Hat Lightspeed (command-line-assistant) Testing

## Thoughts

`c` is a handy tool for questions and answers but would be far more useful if it could directly analyze commands/logs. This can be achieved with simple quotes, command substition, process substition (perhaps?), and a solid understanding of `stderr` vs `stdout` (`c` does not look at `stderr`). For the sake a simplicity a wrapper is desired, but more importantly a newer sysadmin that needs this tool the most _may_ not yet have this level of understanding. `squared` is a proof of concept to address this concern.

### Concerns

* How well does `squared` work with larger output from more advanced applications, e.g. Terraform?
* Is there any kind of rate limiting and/or token concerns? Should we limit logs to the last 50 lines?
