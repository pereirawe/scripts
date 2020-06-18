#!/bin/bash

# require xdotool
# require espeak
# require mpg123

URL_TARGET=https://web.whatsapp.com/
ALERT_TARGET_TRUE="O ponto deu certo"
ALERT_TARGET_FALSE="O ponto deu errado"
ALERT_BEEP=/usr/share/sounds/gnome/default/alerts/glass.ogg
X_POSITION=100
Y_POSITION=100

function soundAlertTrue {
    # espeak -v portugal "$ALERT_TARGET_TRUE"
    play --no-clobber $ALERT_BEEP
}

function soundAlertFalse {
    espeak -v portugal "$ALERT_TARGET_FALSE"
    play --no-clobber $ALERT_BEEP
}

function openURL {
    xdg-open $URL_TARGET
    # xdotool getmouselocation
    # xdotool click --delay 511000 --repeat 100000 1
    sleep 10
    xdotool mousemove 80 234 click --delay 1000 --repeat 1 1
    sleep 1
    xdotool type "USER"
    sleep 3
    xdotool mousemove 80 365 click --delay 3000 --repeat 1 1
    sleep 3
    xdotool mousemove 515 840 click --delay 3000 --repeat 1 1
    sleep 1
    xdotool type "Opa meu amigo! Tudo bem?"
    sleep 1
    xdotool key Return 
    # xdotool key ctrl+l
    # xdotool key ctrl+w
    soundAlertTrue
    exit
    
}

function testURL {
    TEST=$(curl -Is $URL_TARGET | head -1)
    echo $TEST
    if  [[ "$TEST" == *"200"* ]]; then
        echo $TEST
        echo "OK1"
        # soundAlertTrue
    else
        echo $TEST
        echo "KO2"
        # soundAlertFalse
    fi
}

openURL
exit

