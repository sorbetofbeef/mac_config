#!/bin/bash

( if ! pgrep sketchybar ; then
    ~/.local/bin/sketchybar
  else
    exit 0
  fi & ) &> /dev/null



