#!/usr/bin/env bash
# Setup personal configuration

if [ "$(uname)" == "Darwin" ]; then # Mac OS X platform       
    # Make configuration folders
    mkdir -p ~/.config/yabai
    mkdir -p ~/.config/skhd

    # Create links to configuration folder
    ln yabai/yabairc ~/.config/yabai/yabairc
    ln skhd/skhdrc ~/.config/skhd/skhdrc
fi