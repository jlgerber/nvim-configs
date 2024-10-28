# NeoVim Links

[NeoVim User Docs](https://neovim.io/doc/user/)
[NeoVim Home](https://neovim.io)
[Awesome Plugins Page](https://github.com/rockerBOO/awesome-neovim)
[NeoLand](https://neoland.dev/)

# Tabs
Vim introduced tabs in vim 7.

## Opening a file in a tab

```vim
:tabe <filepath>
```

## Opening files into tabs when launching vim

```bash
nvim -p <filepath> [<filepath>,...]
```

## Switching between tabs

- ```:tabn``` Tab Next
- ```:tabp``` Tab Previous

# Split Screen

## Open a file in a split
```vim
:sp <filepath>
```

## Navigate between splits

- ```CTRL + w <arrow>```
- ```CTRL + w w``` Next
- ```CTRL + w W``` Previous
