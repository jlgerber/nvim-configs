# Inserting, Changing, Replacing and Joining

We already know how to enter into insert mode. However, we have a lot more we can do.

## Insert text at different locations 

- `I` - insert in the front of the line (like `^i) 
- `A` - insert text to the end of the line 

## Repeating a character or characters

- `<N>i<chars><ESC>` - Number of repeats + i. Enter text. Hit <ESC>.

## Replace mode

You can replace instead of inserting.

- `r` - replace the character under the cursor
- `R` - put vim in replace mode. Write over existing text.

## Change mode

This mode lets you change specific entities. 

- `cw`  - change the current cursor to the end of the word
- `ciw` - change the current word

Like other commands, these may be prefaced with a number. Note that `ciw` seems to require N+1 to have the intended affect. 
