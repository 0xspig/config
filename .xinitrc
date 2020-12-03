#Statusbar loop
while true; do
   xsetroot -name "$( date +"%F %R" ) | $( cat /sys/class/power_supply/BAT0/capacity )% "
   sleep 1m    # Update time every minute
done &

xsetroot -solid "#7a2a17" &

exec dwm


