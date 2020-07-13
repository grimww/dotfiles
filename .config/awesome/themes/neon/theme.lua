------------
-- Delato --
------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()

local theme = {}

theme.dir                                       = os.getenv("HOME").."/.config/awesome/themes/neon"
theme.titlebar                                  = theme.dir.."/titlebar"
theme.wallpaper                                 = theme.dir.."/wallpapers"
theme.layouts                                   = theme.dir.."/layouts"
theme.taglist                                   = theme.dir.."/taglist"
theme.font                                      = "Roboto Bold 10"
-- https://www.nerdfonts.com/
-- https://github.com/ryanoasis/nerd-fonts
-- https://www.chrisatmachine.com/Linux/05-nerd-fonts/
-- https://www.youtube.com/watch?v=fR4ThXzhQYI
theme.taglist_font                              = "Hack Nerd Font Mono Bold 32"
theme.notification_font                         = "Roboto Bold 15"

theme.bg_normal     = "#282A36CC"
theme.bg_focus      = "#282A36CC"
theme.bg_urgent     = "#4D4D4D"
theme.bg_minimize   = "#9900FF"
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = "#BFBFBF"
theme.fg_focus      = "#9900FF"
theme.fg_urgent     = "#FF0000"
theme.fg_minimize   = "#14151B"

theme.useless_gap   = dpi(10)
theme.border_width  = dpi(3)
theme.border_normal = "#282A36CC"
theme.border_focus  = "#9900FFCC"
theme.border_marked = "#FF0000CC"

theme.tasklist_bg_focus                         = "#282A36"
theme.tasklist_bg_normal                        = "#282A36"
theme.tasklist_fg_focus                         = "#9900FF"

theme.taglist_bg_focus                          = "#282A3600"
theme.taglist_fg_focus                          = "#9900FF"

theme.hotkeys_border_width                      = dpi(3)
theme.hotkeys_border_color                      = "#9900FFCC"
theme.hotkeys_bg                                = "#282A36CC"
theme.hotkeys_modifiers_fg                      = "#9900FF"

theme.titlebar_bg_focus                         = theme.bg_focus
theme.titlebar_bg_normal                        = theme.bg_normal
theme.titlebar_fg_focus                         = theme.fg_focus

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Generate taglist squares:
local taglist_square_size = dpi(4)
--[[
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, theme.fg_normal
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    taglist_square_size, theme.fg_normal
)
]]--
-- https://icons8.com
theme.taglist_squares_sel = theme.taglist.."/squarefw8.png"
theme.taglist_squares_unsel = theme.taglist.."/squarew8.png"

-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
--[[
theme.menu_submenu_icon = themes_path.."default/submenu.png"
]]--
-- https://icons8.com
theme.menu_submenu_icon = theme.dir.."/submenu.png"
theme.menu_height = dpi(25)
theme.menu_width  = dpi(200)

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
-- https://icons8.com
theme.titlebar_close_button_normal = theme.titlebar.."/close_normal.png"
theme.titlebar_close_button_focus  = theme.titlebar.."/close_focus.png"

theme.titlebar_minimize_button_normal = theme.titlebar.."/minimize_normal.png"
theme.titlebar_minimize_button_focus  = theme.titlebar.."/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive = theme.titlebar.."/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = theme.titlebar.."/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = theme.titlebar.."/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = theme.titlebar.."/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = theme.titlebar.."/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = theme.titlebar.."/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = theme.titlebar.."/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = theme.titlebar.."/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = theme.titlebar.."/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = theme.titlebar.."/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = theme.titlebar.."/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = theme.titlebar.."/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = theme.titlebar.."/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = theme.titlebar.."/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = theme.titlebar.."/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = theme.titlebar.."/maximized_focus_active.png"

theme.wallpaper = theme.wallpaper.."/qkVoQCf.png" --"~/.config/awesome/themes/neon/wallpapers/wall.jpg"

-- You can use your own layout icons like this:
theme.layout_fairh = theme.layouts.."/fairhw.png"
theme.layout_fairv = theme.layouts.."/fairvw.png"
theme.layout_floating  = theme.layouts.."/floatingw.png"
theme.layout_magnifier = theme.layouts.."/magnifierw.png"
theme.layout_max = theme.layouts.."/maxw.png"
theme.layout_fullscreen = theme.layouts.."/fullscreenw.png"
theme.layout_tilebottom = theme.layouts.."/tilebottomw.png"
theme.layout_tileleft   = theme.layouts.."/tileleftw.png"
theme.layout_tile = theme.layouts.."/tilew.png"
theme.layout_tiletop = theme.layouts.."/tiletopw.png"
theme.layout_spiral  = theme.layouts.."/spiralw.png"
theme.layout_dwindle = theme.layouts.."/dwindlew.png"
theme.layout_cornernw = theme.layouts.."/cornernww.png"
theme.layout_cornerne = theme.layouts.."/cornernew.png"
theme.layout_cornersw = theme.layouts.."/cornersww.png"
theme.layout_cornerse = theme.layouts.."/cornersew.png"

-- Generate Awesome icon:
--[[
theme.awesome_icon = theme_assets.awesome_icon(
    theme.menu_height, theme.bg_focus, theme.fg_focus
)
]]--
-- https://icons8.com
theme.awesome_icon = theme.dir.."/menu.png"

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = "Papirus-Dark" 

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
