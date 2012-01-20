# Window move/resize steps in pixel per keypress
set :step, 5

# Window screen border snapping
set :snap, 10

# Default starting gravity for windows. Comment out to use gravity of
# currently active client
set :gravity, :center

# Make transient windows urgent
set :urgent, false

# Honor resize size hints globally
set :resize, false

# Enable gravity tiling
set :tiling, false

# Font string either take from e.g. xfontsel or use xft
set :font, "xft:Dejavu Sans Mono:size=8"

# Separator between sublets
set :separator, "|"

# Set the WM_NAME of subtle (Java quirk)
set :wmname, "LG3D"

screen 1 do
  top    [ :views, :title, :spacer, :keychain, :spacer, :tray, :mpd, :separator, :volume, :separator, :battery, :separator, :clock ]
  bottom [ ]
end

screen 2 do
  top    [ :views, :title]
  bottom [ ]
end

# Style for all style elements
style :all do
  background  "#202020"
  border      "#303030", 0
  padding     0, 3
end

# Style for the views
style :views do

  # Style for the active views
  style :focus do
    foreground  "#fecf35"
end

# Style for urgent window titles and views
style :urgent do
    foreground  "#ff9800"
end

# Style for occupied views (views with clients)
style :occupied do
    foreground  "#b8b8b8"
end

# Style for unoccupied views (views without clients)
style :unoccupied do
    foreground  "#757575"
end
end

# Style for sublets
style :sublets do
  foreground  "#fecf35"
end

# Style for separator
style :separator do
  foreground  "#757575"
end

# Style for focus window title
style :title do
  foreground  "#fecf35"
end

# Style for active/inactive windows
style :clients do
  active      "#303030", 2
  inactive    "#202020", 2
  margin      0
  width       50
end

# Style for subtle
style :subtle do
  margin      0, 0, 0, 0
  panel       "#202020"
  #  background  "#3d3d3d"
  stipple     "#757575"
end

# == Gravitys

gravity :top_left,       [   0,   0,  50,  50 ]
gravity :top_left66,     [   0,   0,  50,  66 ]
gravity :top_left33,     [   0,   0,  50,  34 ]
gravity :top,            [   0,   0, 100,  50 ]
gravity :top66,          [   0,   0, 100,  66 ]
gravity :top33,          [   0,   0, 100,  34 ]
gravity :top_right,      [  50,   0,  50,  50 ]
gravity :top_right66,    [  50,   0,  50,  66 ]
gravity :top_right33,    [  50,   0,  50,  33 ]
gravity :left,           [   0,   0,  50, 100 ]
gravity :left66,         [   0,   0,  66, 100 ]
gravity :left33,         [   0,   0,  33, 100 ]
gravity :center,         [   0,   0, 100, 100 ]
gravity :center66,       [  17,  17,  66,  66 ]
gravity :center33,       [  33,  33,  33,  33 ]
gravity :right,          [  50,   0,  50, 100 ]
gravity :right66,        [  34,   0,  66, 100 ]
gravity :right33,        [  67,  50,  33, 100 ]
gravity :bottom_left,    [   0,  50,  50,  50 ]
gravity :bottom_left66,  [   0,  34,  50,  66 ]
gravity :bottom_left33,  [   0,  67,  50,  33 ]
gravity :bottom,         [   0,  50, 100,  50 ]
gravity :bottom66,       [   0,  34, 100,  66 ]
gravity :bottom33,       [   0,  67, 100,  33 ]
gravity :bottom_right,   [  50,  50,  50,  50 ]
gravity :bottom_right66, [  50,  34,  50,  66 ]
gravity :bottom_right33, [  50,  67,  50,  33 ]

# == Grabs

# Jump to view1, view2, ...
grab "W-S-1", :ViewJump1
grab "W-S-2", :ViewJump2
grab "W-S-3", :ViewJump3
grab "W-S-4", :ViewJump4

# Switch current view
grab "W-1", :ViewSwitch1
grab "W-2", :ViewSwitch2
grab "W-3", :ViewSwitch3
grab "W-4", :ViewSwitch4

# Select next and prev view */
grab "KP_Add",      :ViewNext
grab "KP_Subtract", :ViewPrev

# Move mouse to screen1, screen2, ...
grab "W-A-1", :ScreenJump1
grab "W-A-2", :ScreenJump2
grab "W-A-3", :ScreenJump3
grab "W-A-4", :ScreenJump4

# Force reload of config and sublets
grab "W-C-r", :SubtleReload

# Force restart of subtle
grab "W-C-S-r", :SubtleRestart

# Quit subtle
grab "W-C-S-q", :SubtleQuit

# Move current window
grab "W-B1", :WindowMove

# Resize current window
grab "W-B3", :WindowResize

# Toggle floating mode of window
grab "W-f", :WindowFloat

# Toggle fullscreen mode of window
grab "W-space", :WindowFull

# Toggle sticky mode of window (will be visible on all views)
grab "W-S-s", :WindowStick

# Toggle zaphod mode of window (will span across all screens)
grab "W-equal", :WindowZaphod

# Raise window
grab "W-r", :WindowRaise

# Lower window
grab "W-l", :WindowLower

# Select next windows
grab "W-Left",  :WindowLeft
grab "W-Down",  :WindowDown
grab "W-Up",    :WindowUp
grab "W-Right", :WindowRight

# Kill current window
grab "W-S-k", :WindowKill

# Cycle between given gravities
grab "W-KP_7", [ :top_left,     :top_left66,     :top_left33     ]
grab "W-KP_8", [ :top,          :top66,          :top33          ]
grab "W-KP_9", [ :top_right,    :top_right66,    :top_right33    ]
grab "W-KP_4", [ :left,         :left66,         :left33         ]
grab "W-KP_5", [ :center,       :center66,       :center33       ]
grab "W-KP_6", [ :right,        :right66,        :right33        ]
grab "W-KP_1", [ :bottom_left,  :bottom_left66,  :bottom_left33  ]
grab "W-KP_2", [ :bottom,       :bottom66,       :bottom33       ]
grab "W-KP_3", [ :bottom_right, :bottom_right66, :bottom_right33 ]

# In case no numpad is available e.g. on notebooks
grab "W-q", [ :top_left,     :top_left66,     :top_left33     ]
grab "W-w", [ :top,          :top66,          :top33          ]
grab "W-e", [ :top_right,    :top_right66,    :top_right33    ]
grab "W-a", [ :left,         :left66,         :left33         ]
grab "W-s", [ :center,       :center66,       :center33       ]
grab "W-d", [ :right,        :right66,        :right33        ]
grab "W-z", [ :bottom_left,  :bottom_left66,  :bottom_left33  ]
grab "W-x", [ :bottom,       :bottom66,       :bottom33       ]
grab "W-c", [ :bottom_right, :bottom_right66, :bottom_right33 ]

# Exec programs
grab "W-Return",    "urxvt"
grab "A-F2",        'dmenu_run -nb "#202020" -nf "#757575" -sb "#202020" -sf "#fecf35" -fn "Dejavu\ Sans\ Mono-8"'

# Volume controls
grab "XF86AudioMute",           :VolumeToggle
grab "XF86AudioLowerVolume",    :VolumeLower
grab "XF86AudioRaiseVolume",    :VolumeRaise

# Media controls
grab "XF86AudioPlay",           :MpdToggle
grab "XF86AudioPrev",           :MpdPrevious
grab "XF86AudioNext",           :MpdNext

grab "XF86Display", "~/bin/big_screen.rb && subtler -r"

grab "Print",       "scrot -m '%d%m%Y_$wx$h.png' -e 'mv $f ~/Pictures/scrot/'"

# == Tags

# Simple tags
tag "terms",   "xterm|[u]?rxvt"
tag "browser", "uzbl|opera|firefox|navigator|chromium|google-chrome|exe"  # The last one is for fullscreen flash

# Placement
tag "editor" do
  match  "[g]?vim|sublime|emacs"
  resize true
end

tag "fixed" do
  geometry [ 10, 10, 100, 100 ]
  stick    true
end

tag "resize" do
  match  "sakura|gvim|emacs"
  resize true
end

tag "gravity" do
  gravity :center
end

# Modes
tag "stick" do
  match "mplayer"
  float true
  stick true
end

tag "float" do
  match "display"
  float true
end

# Applications
tag "minecraft" do
  match class:  "net-minecraft-LauncherFrame"
  gravity :center66
end

tag "openttd" do
  match "openttd"
  gravity :center66
end

# == Views

view "www",     "browser"
view "dev",     "editor"
view "con",     "terms"
view "etc",     "default|minecraft"

# == Sublets

sublet :mpd do
  show_colors       true
  show_icons        false
  format_string     "%title% - %artist%"
  pause_text        "- paused -"
  not_running_text  "- not running -"
  pause_color       "#fecf35"
  stop_color        "#fecf35"
  title_color       "#fecf35"
  artist_color      "#3579a8"
end

sublet :battery do
end

sublet :volume do
  interval      30
end

sublet :clock do
  interval      30
  format_string "%H:%M"
end

# == Hooks

