# Cut Copy And Paste

What does it mean to cut text? It means to delete text and save it into a register.

## Copying text 

To copy text you use the yank operator ('y')

- `y`   - yank highlighted text
- `yw`  - yank from cursor to end of word
- `yiw` - yank the current word
- `yy`  - yank the current line 

## Pasting text 

- `p` - put (paste) text below the current line 
- `P` - put (paste) text above the current line

Text that has been placed in the unnamed register will remain there even after using `p` or `P`.

### Swapping adjacent characters

To swap adjacent characters, put the cursor on top of the character, and type:

```
xp
```

### Swapping adjacent lines

To swap adjacent lines, simply part the cursor in the top line and type:

```
dd 
p
```

That is `delete line` followed by a `put`. 

## Registers

There are three types of registers we are concerned with here:

- Unnamed
- Numbered
- Named

There are 10 numbered registers, 0 to 9, and 26 named registers, from 'a' to 'z'.

NeoVim / Vim uses the double quote to refer to a register.

- `""` - Unnamed register 
- `"0` - Register 0

### Purposes

- `""` - holds text from `d`, `c`, `s`, `x`, and `y` operations
- `"0` - holds last ext yanked 
- `"1` - holds last text deleted (d) or changed (c)
- Numbered registers shift with each `d` or `c` operation

### Inspecting

You can view the register contents by typing `:reg`

You can view a specific register contents by following `:reg` with the name of the register. For example `:reg 1` or `:reg a`

### Pasting from a specific register

You can specify the register before a `p` command.
You do this by first typing `"` then the name or number, and finally the operation.

For example, here we put from the second register:
```
"2p
```

### The Black Hole Register

You can send text to the blackhole register if you dont want to store the text in a register. You do this with `"_`. 

In the following example, we delete the current line and send it to the blackhole register. IE its gone.

```
"_dd
```


## Undo and Redo 

- `u`     - undo 
- `<C-r>` - redo
