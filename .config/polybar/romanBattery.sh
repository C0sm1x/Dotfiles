BATTERYPERCENTAGE="$(exec cat /sys/class/power_supply/BAT1/uevent | grep -i power_supply_capacity | cut -d = -f 2 | head -n 1)"

if [ $BATTERYPERCENTAGE -gt 100 ]
	then
	
	BATTERYPERCENTAGE=100
	fi

echo $BATTERYPERCENTAGE | RomanNumeralConversion
