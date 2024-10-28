# Yank

You yank data into the buffer using the yank command (`y`).

After yanking data, you can paste it under the cursor, using `p`.

## Before you Yank - Visual Mode 

In addition to being able to go into visual line mode (`<S-v>`), or normal visual mode (`v`),
you can use movement modifiers.

- `v + i + w` - Select the word in which the cursor rests currently.

## Yank variants

- `y + y` - yank the current line.
- `y + {count} + y` - yank `count` number of lines.

### Specifying a Register to Yank into 

By default you yank into a default register which vim determines. However, we don't have to
leave matters up to nvim. We can specify a register, by prefixing the yank command with `" + <register>`.

For example:
```" + 0 + y``` yanks the selection into the `0` register.

### Special Registers

- On os x, the system register can be referred to as `*`. 
- On windows, this system register is `+`. 
- On linux, the system register is `+`. However the mouse register is `*`

You can yank and paste from this buffer, or buffers.



