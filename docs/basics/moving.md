# Moving in a file

[Moving Documentation](https://learnvim.irian.to/basics/moving_in_file)

You can also type `:h motion.txt` to get help on moving around.

## Character Navigation

The most basic motion unit is the character. That is, the cursor moves one character in some direction.
You can use the arrow keys, but we have standard keys on the home row for this as well:

- `h` - move cursor left
- `j` - move cursor down
- `k` - move cursor up
- `l` - move cursor right

### Bigger Jumps

By default, when pressing one of our navigation keys, we move one space. However, we can prefix 
our movement keys with a number and we will move that number of spaces in the provided direction:

```
[count] + motion
```

For example, to move 5 spaces to the right, we do `5l`.

## Word Navigation

We can also navigate by word (a-zA-Z0-9) or by WORD (sequence of characters other than white space).

- `w`  - move to the beginning of the next word
- `W`  - move to the beginning of the next WORD
- `e`  - move to the end of the next word 
- `E`  - move to the end of the next WORD
- `b`  - move backward to the beginning of the previous word
- `B`  - move backward to the beginning of the previous WORD
- `ge` - move backward to the end of the previous word
- `gE` - move backward to the end of the previous WORD

### Example differences

Try word navigation in its different forms on these.
```
foo bar bla 1 2 3 value
foo_bar-bla 2-3-3 = value
foo.bar.bla 1.2.3 value
```

## Current Line Navigation

Nvim has various ways of navigating on the current line:

- `0`    - Go to the first character in the current line
- `^`    - Go to the first nonblank char in the current line 
- `g`    - Go to the last non-blank char in the current line 
- `$`    - Go to the last char in the current line
- `<N>|` - Go to the column `N` in the current line
