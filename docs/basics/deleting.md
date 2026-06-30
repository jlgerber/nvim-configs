# Deleting Text

## Deleting a character

- `x`  - delete the character under the cursor
- `dl` - delete the character under cursor
- `X`  - delete the character to the left of the cursor
- `dh` - delete the character to the left of the cursor

## Delete a word under the cursor

- `dw`  - Delete from the cursor's position to the end of the word
- `diw` - Delete word under cursor 

You can always prepend these commands with a number if you want to 
delete multiple lines...

Both of these examples are valid:

- `3dw` - delete 3 words
- `d3w` - delete 3 words

## Deleting Lines

- `dd` - Delete the current line
- `dj` - Delete the current and next line 
- `dk` - Delete the current and previous line
- `d0` - Delete from cursor to the beginning of line
- `d$` - Delete from cursor to the end of the line
- `D`  - Delete from cursor to the end of the line
