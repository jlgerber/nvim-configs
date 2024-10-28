# Buffers, Windows, and Tabs

## Buffers

A buffer is an in-memory space where you can write and edit text. When you open a file in nvim,
the contents is bound to a buffer. If you open 3 files, you will have 3 separate buffers.

### Listing buffers

Just because you have buffers, doesnt mean you can see them. If you open multiple files when you
start nvim, for instance, you wont necessarily see all of them. However, you can list all of the 
buffers by issuing one of the following:

- `:ls` - list buffers
- `:buffers` - ditto
- `:files` - yup, another way.

Unfortunately, you cannot select the buffers that you see in this mini-window.  

Fortunately, our **telescope** plugin has a means of displaying and selecting buffers: 

- ```<leader>bb``` - bring up a telescope window with the current buffers

### Selecting a buffer

You can open a buffer a number of different ways. 
- `:bnext` - goto the next buffer
- `:bprevious` - goto the previous buffer
- `:buffer + <FILENAME>` - go to the buffer named `<FILENAME>`
- `:buffer + <N>` - go to the buffer numbered `N`.

### Deleting a buffer 

You can delete a buffer by name or number using the `:bdelete` command:

```
:bdelete <N>|<FILENAME>
```

## Exiting Vim in a Hurry.

There are several ways of getting out of vim quickly:

- `:qall` - quit all buffers (wont work if any have been altered)
- `:qall!` - quit all buffers (losing any non-saved changes)
- `:wqall` - write all buffers and quit

## Windows

A window is a viewport on a buffer. One may split a window multiple times, either vertically or 
horizontally.

The *out of the box* way of doing this is with the `:split` and `:vsplit` commands.
The configured way of doing this with my setup is: `<leader>wh` and `<leader>wv`

Once one is faced with multiple windows, one must know how to navigate between them. 

The *out of the box* way of navigating is by using the `<C-w>` prefix with the canonical direction 
keys:

- `<C-w>h` - move cursor to the left window
- `<C-w>j` - move cursor to the window below
- `<C-w>k` - move cursor to the window above
- `<C-w>l` - move cursor to the right window

My setup adds a couple of additional window goodies for navigation:

- `<leader>wn` - move cursor to the next window
- `<leader>wp` - move cursor to the previous window

As well as ergonomics:

- `<leader>wm` - Toggle between maximizing current window and returning it to its original size
- `<leader>wr` - Rotate windows around
- `<leader>wk` - kill all windows other than the one in which the cursor resides
