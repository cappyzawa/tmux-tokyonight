#!/bin/bash
tokyonight_black="#1a1b26"
tokyonight_blue="#7aa2f7"
tokyonight_yellow="#e0af68"
tokyonight_red="#f7768e"
tokyonight_white="#acb0d0"
tokyonight_green="#9ece6a"
tokyonight_visual_grey="#4e5173"
tokyonight_comment_grey="#4e5173"

get() {
   local option=$1
   local default_value=$2
   local option_value="$(tmux show-option -gqv "$option")"

   if [ -z "$option_value" ]; then
      echo "$default_value"
   else
      echo "$option_value"
   fi
}

set() {
   local option=$1
   local value=$2
   tmux set-option -gq "$option" "$value"
}

setw() {
   local option=$1
   local value=$2
   tmux set-window-option -gq "$option" "$value"
}

set "status" "on"
set "status-justify" "left"

set "status-left-length" "100"
set "status-right-length" "100"
set "status-right-attr" "none"

set "message-fg" "$tokyonight_white"
set "message-bg" "$tokyonight_black"

set "message-command-fg" "$tokyonight_white"
set "message-command-bg" "$tokyonight_black"

set "status-attr" "none"
set "status-left-attr" "none"

setw "window-status-fg" "$tokyonight_black"
setw "window-status-bg" "$tokyonight_black"
setw "window-status-attr" "none"

setw "window-status-activity-bg" "$tokyonight_black"
setw "window-status-activity-fg" "$tokyonight_black"
setw "window-status-activity-attr" "none"

setw "window-status-separator" ""

set "window-style" "fg=$tokyonight_comment_grey"
set "window-active-style" "fg=$tokyonight_white"

set "pane-border-fg" "$tokyonight_white"
set "pane-border-bg" "$tokyonight_black"
set "pane-active-border-fg" "$tokyonight_green"
set "pane-active-border-bg" "$tokyonight_black"

set "display-panes-active-colour" "$tokyonight_yellow"
set "display-panes-colour" "$tokyonight_blue"

set "status-bg" "$tokyonight_black"
set "status-fg" "$tokyonight_white"

set "@prefix_highlight_fg" "$tokyonight_black"
set "@prefix_highlight_bg" "$tokyonight_green"
set "@prefix_highlight_copy_mode_attr" "fg=$tokyonight_black,bg=$tokyonight_green"
set "@prefix_highlight_output_prefix" "  "

status_widgets=$(get "@tokyonight_widgets")
time_format=$(get "@tokyonight_time_format" "%R")
date_format=$(get "@tokyonight_date_format" "%d/%m/%Y")

set "status-right" "#[fg=$tokyonight_white,bg=$tokyonight_black,nounderscore,noitalics]${time_format}  ${date_format} #[fg=$tokyonight_visual_grey,bg=$tokyonight_black]#[fg=$tokyonight_visual_grey,bg=$tokyonight_visual_grey]#[fg=$tokyonight_white, bg=$tokyonight_visual_grey]${status_widgets} #[fg=$tokyonight_green,bg=$tokyonight_visual_grey,nobold,nounderscore,noitalics]#[fg=$tokyonight_black,bg=$tokyonight_green,bold] #h #[fg=$tokyonight_yellow, bg=$tokyonight_green]#[fg=$tokyonight_red,bg=$tokyonight_yellow]"
set "status-left" "#[fg=$tokyonight_black,bg=$tokyonight_green,bold] #S #{prefix_highlight}#[fg=$tokyonight_green,bg=$tokyonight_black,nobold,nounderscore,noitalics]"

set "window-status-format" "#[fg=$tokyonight_black,bg=$tokyonight_black,nobold,nounderscore,noitalics]#[fg=$tokyonight_white,bg=$tokyonight_black] #I  #W #[fg=$tokyonight_black,bg=$tokyonight_black,nobold,nounderscore,noitalics]"
set "window-status-current-format" "#[fg=$tokyonight_black,bg=$tokyonight_visual_grey,nobold,nounderscore,noitalics]#[fg=$tokyonight_white,bg=$tokyonight_visual_grey,nobold] #I  #W #[fg=$tokyonight_visual_grey,bg=$tokyonight_black,nobold,nounderscore,noitalics]"
