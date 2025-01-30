#!/usr/bin/bash

# Kiểm tra nếu chạy script với quyền root
if [ $EUID -eq 0 ]; then
    echo "Do not run this script as root."
    exit 1
fi

# Đường dẫn đến thư mục chứa ảnh nền
l_wploc="$HOME/dotfiles/wallpapers"

# Kiểm tra thư mục tồn tại
if [ ! -d "$l_wploc" ]; then
    echo "Directory '$l_wploc' does not exist."
    exit 1
fi

# Tìm ảnh và chọn ngẫu nhiên
random_image=$(find "$l_wploc" -iregex '.*\.\(png\|jpg\|jpeg\)' -type f | shuf -n 1)

# Kiểm tra nếu không có ảnh nào trong thư mục
if [ -z "$random_image" ]; then
    echo "No images found in '$l_wploc'."
    exit 1
fi

# Đặt ảnh làm hình nền với swaybg
killall swaybg
swaybg -m fill -i "$random_image" &

exit 0

