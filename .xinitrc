#Statusbar loop

export DWM_LIVE=true;

while $DWM_LIVE; do
   xsetroot -name "$( /home/tyler/.bin/dozenal-time ) | $( cat /sys/class/power_supply/BAT0/capacity )% "
   sleep 1m    # Update time every minute
done &

xsetroot -solid "#7a2a17" &

exec dwm


