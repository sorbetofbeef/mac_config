local wezterm = require("wezterm")
local act = wezterm.action
local mod = "OPT"
local lead = "LEADER"

return {
  leader = { key="Space", mods=mod, timeout_milliseconds=3000 },
  launch_menu = {
    {
      label = "htop",
      args = {"/opt/local/bin/htop"},
    },
    {
      label = "Neovim",
      args = {"/usr/local/bin/nvim"},
    },
  },

  keys = {
  -- LEADER -- 
    -- KeyTables
    {
      key="o",
      mods=lead,
      action=act.ShowLauncherArgs{flags="LAUNCH_MENU_ITEMS", title="Programs"}
    },
    {
      key="w",
      mods=lead,
      action=act.ShowLauncherArgs{flags="WORKSPACES", title="Workspaces"}
    },

    {
      key="t",
      mods=lead,
      action=act.ShowLauncherArgs{flags="TABS", title="Tabs"}
    },
    {
      key="v",
      mods=lead,
      action=act.SplitVertical{domain="CurrentPaneDomain"},
    },
    {
      key="s",
      mods=lead,
      action=act.SplitHorizontal{domain="CurrentPaneDomain"},
    },
  },
-- ** FONTS ** --

  font_size = 10.0,
  font = wezterm.font_with_fallback({
    { family="Cartograph CF"},
    { family="Symbols Nerd Font"}
  }),

-- ** WINDOWS ** --
  -- DIMENSIONS --
  window_padding = {
    left = "3cell",
    right = "3cell",
    top = "1cell",
    bottom = "1cell",
  },
  -- COLORS --
  window_frame={
    active_titlebar_bg = "#b7141f",
    active_titlebar_fg = "#e5e5e5",
  },
  -- colors = {
    -- Tab Bar
    --[[ tab_bar = {
      background = "#b7141f",
      active_tab = {
        intensity = "Bold",
        italic = true,
        bg_color = "#232322",
        fg_color = "#e5e5e5",
      },
      new_tab = {
        bg_color = "#b7141f",
        fg_color = "#b7141f"
      }
    }
  }, ]]
  color_scheme = "MaterialDarker",
  use_fancy_tab_bar = false,
  enable_wayland = false,
  window_decorations = "RESIZE",
  unix_domains = {{ name = "unix" }},
  default_gui_startup_args = {"connect", "unix"},
}

