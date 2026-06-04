#!/bin/sh
echo "1) Wayland only"
echo "2) X11 only"
echo "3) Both"
read -p "Select a display driver for wine: " num

# adds registry value with selected option
if [ $num -eq 1 ]; then
	wine reg add 'HKEY_CURRENT_USER\Software\Wine\Drivers' /v Graphics /d 'wayland' /f
elif [ $num -eq 2 ]; then
	wine reg add 'HKEY_CURRENT_USER\Software\Wine\Drivers' /v Graphics /d 'x11' /f
elif [ $num -eq 3 ]; then
	wine reg add 'HKEY_CURRENT_USER\Software\Wine\Drivers' /v Graphics /d 'wayland,x11' /f
else
	echo "Select 1-3, You selected $num"
fi

echo "Exiting..."
