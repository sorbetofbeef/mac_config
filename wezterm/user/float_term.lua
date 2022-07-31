
--[[ local function create_tab_title(tab, tabs, panes, config, hover, max_width)
  local user_title = tab.active_pane.user_vars.panetitle
  if user_title ~= nil and #user_title > 0 then
    return tab.tab_index + 1 .. ":" .. user_title
  end

  local title = "PopUp Title"
  if title == "" then
    local dir = string.gsub(tab.active_pane.title, "(.*[: ])(.*)]", "%2")
    dir = utils.convert_useful_path(dir)
    title = wezterm.truncate_right(dir, max_width)
  end
end ]]

local wezterm = require("wezterm")
local mux = wezterm.mux

module = {}

module.create_title = function ()
   local title = wezterm.on("gui-startup", function()
      local window = mux.spawn_window{}
      window.set_title("PopUp Terminal")
    end)
  return title
end

return {module}
