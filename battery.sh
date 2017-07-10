##
# depends on battery zsh plugin
# https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/battery/battery.plugin.zsh
##

if [ "$(ioreg -rc "AppleSmartBattery" | wc -m)" -gt "0" ]; then
    battery_charge() {
        read -r last_battery_pct < $HOME/.battery
        curr_battery_pct="$(battery_pct)"

        echo $curr_battery_pct > $HOME/.battery

        battery_is_charging \
            && prompt="⚡" \
            || prompt="$(battery_pct_prompt)"

        echo "$prompt" 2> /dev/null

        if [ "$curr_battery_pct" -lt "6" ] && [ "$curr_battery_pct" -lt "$last_battery_pct" ]; then
            say -v Daniel "$curr_battery_pct% battery remaining" &
        fi
    }

    RPROMPT='$(battery_charge)'
fi
