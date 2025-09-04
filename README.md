# smooth.nvim

Personal smooth theme implementation for Neovim.

![screenshot](./theme.png)

## Installation

### Lazy

```lua
return {
 {
  "segersniels/smooth.nvim",
  name = "smooth",
  lazy = true,
  opts = {
    style = "dark", -- "dark" or "light"
    auto = true, -- Auto-switch based on system appearance (macOS only, default: true)
  },
 },
 {
  "LazyVim/LazyVim",
  opts = {
   colorscheme = "smooth",
  },
 },
}
```

## Configuration

- `style`: Choose between `"dark"` or `"light"` theme variants
- `auto`: Automatically switch theme based on system appearance (macOS only). Defaults to `true`

## Commands

- `:SmoothStyle` - Manually toggle between dark/light styles (disables auto-switching)
- `:SmoothAuto` - Toggle auto-switching on/off
