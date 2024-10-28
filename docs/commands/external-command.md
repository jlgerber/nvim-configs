# External Command 

[External Command Docs](https://learnvim.irian.to/basics/external_commands)

## The Bang Command

Vim has a '`!`' command that can do 3 things:

1. Read the STDOUT of an external command into the current buffer
2. Write the content of your buffer as STDIN to an external command
3. Execute an external command from within vim

### Reading from STDOUT of a command 

To read the results from STDOUT of execting a command, use the following syntax:

```
:r !<CMD>
```

For example to read the contents of the current directory into the current buffer, type:

```
:r !ls
```

**Note**
The `r` command accepts an address prefix if you want to insert the results of something at a 
particular line. ```:10r !ls -1 ``` will insert the results of running `ls` at line 10 of the current
buffer.

### Writing the buffer content into an external command

```
:w !<CMD>
```

This instructs vim to run the `CMD` on each line of the current buffer.

### Executing an External Command.

Vim uses `!` to do this:

```
:!<CMD>
```

Will execute the `CMD` and display the results in the mini-window at the bottom.
