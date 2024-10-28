# Global Command

Vim has a global command '`g`', which you can use to apply a command-line (ex) command on 
multiple lines simultaneously.

[global command documentation](https://learnvim.irian.to/basics/the_global_command)

## Syntax

The global command follows this syntax:

```
:g/<PATTERN>/<COMMAND>
```

- The `<PATTERN>` matches all lines containing the pattern. 
- The `<COMMAND>` can be command-line command.

If you want to limit the global command's scope to a range, you can use range syntax like so:

```
:[range]g/<PATTERN>/<COMMAND>
```

## Range examples

- `:1,5g/console/d` -- delete the word `console` from the first 5 lines 
- `:,4g/console/d` -- if no number is supplied before the comma, we use the current line number
- `:3,g/console/d` -- end at the current line since no ending number has been supplied 

### Range Symbols

- `.` - The current line. As in `3,.g/console/d` - delete 'console' from line 3 to the current line 
- `$` - The last line in the file. As in `3,$g/console/d` - delete console from line 3 to eof.
- `+<N>` - N lines past the current one. As in `3,+5g/console/d` delete console from line 3 until 
    5 lines past the current line.

By default, the command affects the entire file (unlike most other vim commands). 
