#!/bin/sh

# This script is a modified version of @Remz-Jay's tmux-launch script
# The original can be found here https://github.com/Remz-Jay/vim-config/blob/master/tmux-launch.sh

# abort if we're already inside a TMUX session
[ "$TMUX" == "" ] || exit 0

# present a menu for the user to choose which workspace to open
PS3="Please choose your session: "
options=("NEW SESSION" "Regular ZSH Shell" $(tmux list-sessions -F "#S"))
echo "Available sessions"
echo "------------------"
echo " "
select opt in "${options[@]}"
do
  case $opt in
    "NEW SESSION")
      read -p "Enter new session name: " SESSION_NAME
      tmux new -s "$SESSION_NAME"
      break
      ;;
    "Regular ZSH Shell")
      break
      ;;
    *)
      tmux attach-session -t $opt
      break
      ;;
  esac
done

