------------------------------------
--  "junker" awesome theme        --
--    By Sean S (gtarget/smswz)   --
------------------------------------

-- Alternative icon sets and widget icons:
--  * http://awesome.naquadah.org/wiki/Nice_Icons
-- Icons aren't part of this theme, b/c I don't own them
-- My icons are modified from above, and my flags are from famfamfam_flags

-- {{{ Main
theme = {}
theme.name = "junker"
theme.dir = awful.util.getdir("config") .. "/themes/" .. theme.name .. "/"
theme.wallpaper_cmd = { "awsetbg -c " .. theme.dir .. "archwall_dark_blue.png" }
-- }}}

-- {{{ Styles
theme.font      = "fixed 9"

-- {{{ Colors
theme.fg_normal  = "#d8e1e3"
theme.fg_focus   = "#a6d7e3"
theme.fg_urgent  = "#fff8a6"
theme.bg_normal  = "#3f3f3f"
theme.bg_focus   = "#1e2320"
theme.bg_urgent  = theme.bg_normal
theme.bg_systray = theme.bg_normal
-- }}}

-- {{{ Borders
theme.border_width  = "2"
theme.border_normal = theme.bg_normal
theme.border_focus  = "#6f6f6f"
theme.border_marked = "#cc9393"
-- }}}

-- {{{ Titlebars
theme.titlebar_bg_focus  = theme.bg_normal
theme.titlebar_bg_normal = theme.bg_normal
-- }}}

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- Example:
--theme.taglist_bg_focus = "#CC9393"
-- }}}

-- {{{ Widgets
-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.fg_widget        = "#AECF96"
--theme.fg_center_widget = "#88A175"
--theme.fg_end_widget    = "#FF5656"
--theme.bg_widget        = "#494B4F"
--theme.border_widget    = "#3F3F3F"
-- }}}

-- {{{ Mouse finder
theme.mouse_finder_color = "#cc9393"
-- mouse_finder_[timeout|animate_timeout|radius|factor]
-- }}}

-- {{{ Menu
-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_height = "16"
theme.menu_width  = "100"
-- }}}

-- {{{ Icons
-- {{{ Taglist
theme.taglist_squares_sel   = theme.dir .. "taglist/squarefz.png"
theme.taglist_squares_unsel = theme.dir .. "taglist/squarez.png"
--theme.taglist_squares_resize = "false"
-- }}}

-- {{{ Misc
theme.awesome_icon           = theme.dir .. "archlinux.png"
theme.menu_submenu_icon      = "/usr/share/awesome/themes/default/submenu.png"
-- }}}

-- {{{ Widget Icons
-- Flags
theme.widget_us         = theme.dir .. "icons/flags/us.png"
theme.widget_de         = theme.dir .. "icons/flags/de.png"
theme.widget_no         = theme.dir .. "icons/flags/no.png"

-- Status widgets
theme.widget_spkr       = theme.dir .. "icons/spkr_01.png"
theme.widget_spkr_mute  = theme.dir .. "icons/spkr_02.png"
theme.widget_pacman     = theme.dir .. "icons/pacman.png"
theme.widget_eth        = theme.dir .. "icons/net_wired.png"
theme.widget_wifi       = theme.dir .. "icons/wifi_01.png"
theme.widget_batt_full  = theme.dir .. "icons/bat_full_02.png"
theme.widget_batt_low   = theme.dir .. "icons/bat_low_02.png"
theme.widget_batt_empty = theme.dir .. "icons/bat_empty_02.png"
-- }}}

-- {{{ Layout
theme.layout_tile       = theme.dir .. "layouts/tile.png"
theme.layout_tileleft   = theme.dir .. "layouts/tileleft.png"
theme.layout_tilebottom = theme.dir .. "layouts/tilebottom.png"
theme.layout_tiletop    = theme.dir .. "layouts/tiletop.png"
theme.layout_fairv      = theme.dir .. "layouts/fairv.png"
theme.layout_fairh      = theme.dir .. "layouts/fairh.png"
theme.layout_spiral     = theme.dir .. "layouts/spiral.png"
theme.layout_dwindle    = theme.dir .. "layouts/dwindle.png"
theme.layout_max        = theme.dir .. "layouts/max.png"
theme.layout_fullscreen = theme.dir .. "layouts/fullscreen.png"
theme.layout_magnifier  = theme.dir .. "layouts/magnifier.png"
theme.layout_floating   = theme.dir .. "layouts/floating.png"
-- }}}

-- {{{ Titlebar
theme.titlebar_close_button_focus  = theme.dir .. "titlebar/close_focus.png"
theme.titlebar_close_button_normal = theme.dir .. "titlebar/close_normal.png"

theme.titlebar_ontop_button_focus_active  = theme.dir .. "titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active = theme.dir .. "titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive  = theme.dir .. "titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive = theme.dir .. "titlebar/ontop_normal_inactive.png"

theme.titlebar_sticky_button_focus_active  = theme.dir .. "titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active = theme.dir .. "titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive  = theme.dir .. "titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive = theme.dir .. "titlebar/sticky_normal_inactive.png"

theme.titlebar_floating_button_focus_active  = theme.dir .. "titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active = theme.dir .. "titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive  = theme.dir .. "titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive = theme.dir .. "titlebar/floating_normal_inactive.png"

theme.titlebar_maximized_button_focus_active  = theme.dir .. "titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active = theme.dir .. "titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = theme.dir .. "titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = theme.dir .. "titlebar/maximized_normal_inactive.png"
-- }}}
-- }}}

return theme
