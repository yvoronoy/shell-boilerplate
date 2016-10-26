# Shell Boilerplate [![Code Climate](https://codeclimate.com/github/yvoronoy/shell-boilerplate/badges/gpa.svg)](https://codeclimate.com/github/yvoronoy/shell-boilerplate)
Shell Boilerplate

## How to use
### Instalation
```
wget https://raw.githubusercontent.com/yvoronoy/shell-boilerplate/master/script.sh
```
### How create custom action
Usage:
  script.sh [action name] [--options] [<arguments>]

You can specify your own action for example _helloworld_
```
helloworldAction()
{
  echo "Hello World!";
}
```
and run it `script.sh helloworld`
That's it.

## Code Style
- Use two spaces instead tab.
- Use ; at the end of line.
- Use {} to enclose your variables.
- Use :- if you want to test variables that could be undeclared. For instance, with if [ "${NAME:-}" = "Kevin" ], $NAME will evaluate to Kevin if the variable is empty. The variable itself will remain unchanged. The syntax to assign a default value is ${NAME:=Kevin}.

## Resources
- [Best Practices for Writing Bash Scripts](http://kvz.io/blog/2013/11/21/bash-best-practices/)
