#!/bin/bash

# This script adds an invisible spacer to the macOS Dock
# It creates a persistent app tile that acts as a spacer and then restarts the Dock

# Display a brief explanation
echo "Adding a spacer to your macOS Dock..."

# Use defaults command to add a persistent app tile with special properties that make it a spacer
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'

# Restart the Dock to apply changes
echo "Restarting Dock to apply changes..."
killall Dock

echo "Spacer added successfully!"
echo "Run this script again to add additional spacers."
echo "To remove a spacer, simply drag it out of the Dock."