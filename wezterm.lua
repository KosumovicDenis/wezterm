-- Pull in the wezterm API
local wezterm = require 'wezterm'
-- local act = wezterm.action

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Settings
config.enable_wayland = true
-- Color & Window conf
config.color_scheme = 'Night Owl (Gogh)'
config.window_background_opacity = 0.85
config.window_decorations = 'NONE'
config.window_close_confirmation = 'AlwaysPrompt'
config.scrollback_lines = 3000
config.default_workspace = 'home'
-- Padding
config.window_padding = {
  left = 1,
  right = 1,
  top = 0,
  bottom = 0,
}
-- Font
config.font = wezterm.font('Hack Nerd Font Mono')
config.font_size = 18
config.line_height = 1
-- Keys
-- Leader is the same as my old tmux prefix
config.leader = { key = 'a', mods = 'CTRL', timeout_milliseconds = 1000 }
config.keys = {
  -- splitting
  {
    mods   = "LEADER",
    key    = "-",
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' }
  },
  {
    mods   = "LEADER|SHIFT",
    key    = "=",
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' }
  }
}
-- Tab
config.enable_tab_bar = true
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.show_new_tab_button_in_tab_bar = false
config.show_tab_index_in_tab_bar = true
config.tab_bar_at_bottom = true

return config
