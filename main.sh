echo "1) Wayland only"
echo "2) X11 only"
read -p "Select a display driver for wine: " num

# adds registry value with selected option
if [ $num -eq 1 ]; then
	wine reg add 'HKEY_CURRENT_USER\Software\Wine\Drivers' /v Graphics /d 'wayland'
elif [ $num -eq 2 ]; then
	wine reg add 'HKEY_CURRENT_USER\Software\Wine\Drivers' /v Graphics /d 'x11'
else
	echo "Select 1-2, You selected $num"
fi

echo "Exiting..."
