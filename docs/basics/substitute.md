# Substitute

In vim, you can substitute a word for another word using the substitute command.

```
:[RANGE]s/<OLD>/<NEW>/g
```

If I wanted to find all occurences of the word `cat` and replace them with `dog` in the file, 
I would type:

```
:s%/cat/dog/g
```
( The '%' is a shorthand for the complete range )

## Confirmation

If you want nvim to confirm each match with you, then you simply append 'c' after 'g'

```
:s%/cat/dog/gc
```
