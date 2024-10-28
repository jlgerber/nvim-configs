# Macros

Vim has a powerful macro system which allows you to record keystrokes into a buffer, and then
replay that buffer at a later date.

## Basics

### Start a recording

The basic way to start recording a macro is by pressing `q + <register>`. 

### End a recording

The way that you end the recording is by once again pressing `q`.

### Apply a Macro

You apply a macro by pressing the '`@`' character, followed by the register name. For exmaple:
`@a` would replay the macro in the '`a`' register.

### Applying a Macro more than once.

You can replay a macro multiple times, by preceding the '`@`' with a count:
```
[COUNT]@<REGISTER>
```
For example - `3@a` - replay the 'a' buffer 3 times.

### Example Text 

Given the following text, we would like to surround each item in double quotes and separate with
a comma. How would we do this?
```
array = [
    something
    hello
    world
    foof
    Ihavenofriends
    vimisgreat
    somethingelse
]
```
#### Steps

1. press `q + a` to record the macro into the '`a`' buffer
2. go to the first word, add a quote, hit esc, go to the end, insert a quote and a comma, then 
    move to the next line and stop the recording by hitting '`q`' again.
3. move to the next line and hit `@a`. This will replay the macro in the '`a`' buffer.
4. We can also apply the macro a number of times equal to the remaining words. In our case, that
    would be 5, so `5@a`.

```
array = [
    "something",
    "hello",
    "world",
    "foof",
    "Ihavenofriends",
    "vimisgreat",
    "somethingelse",
]
```
