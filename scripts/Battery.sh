#!/bin/bash

BATTERYPERCENTAGE="$(exec cat /sys/class/power_supply/BAT0/uevent | grep -i power_supply_capacity | cut -d = -f 2 | head -n 1)"
CHARGING="$(exec cat /sys/class/power_supply/AC/uevent | grep -i online | cut -d = -f 2)"

if [ $BATTERYPERCENTAGE -gt 100 ]
	then

	BATTERYPERCENTAGE=100
	fi

if [ $BATTERYPERCENTAGE -eq 10  ]
	then
            if [ $CHARGING -eq 0 ]
            then

            echo "%{c}   Low Battery!" | lemonbar -f "fontawesome:size=20" -f "Hack:size=20" -p -g 420x200+400+100 -B#252525 -d& sleep 2 && pkill lemonbar && sleep 3000&
            fi

	fi

if [ $CHARGING -eq 1 ]
	then

	echo -n " "

	else

	echo -n ""
	fi

echo $BATTERYPERCENTAGE | RomanNumeralConversion
