#!/bin/bash

LID_STATE=$(cat /proc/acpi/button/lid/LID0/state)

if [[ $LID_STATE == *"closed"* ]]; then
    hyprctl dispatch dpms off eDP-1  # Tắt màn hình laptop
else
    hyprctl dispatch dpms on eDP-1  # Bật lại màn hình laptop khi mở nắp
fi
