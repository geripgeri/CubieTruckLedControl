#!/bin/bash  

green="/sys/class/leds/green:ph07:led4/brightness"
blue="/sys/class/leds/blue:ph21:led1/brightness"
orange="/sys/class/leds/orange:ph20:led2/brightness"
white="/sys/class/leds/white:ph11:led3/brightness"

PS3='Please enter your choice: '
options=("Turn all led on" "Turn all led off" "Quit")
select opt in "${options[@]}"
do
    case $opt in
         "Turn all led on")
            echo 1 > $green 
            echo 1 > $blue 
            echo 1 > $orange 
            echo 1 > $white 
            break
            ;;
        "Turn all led off")
            echo 0 > $green 
            echo 0 > $blue 
            echo 0 > $orange 
            echo 0 > $white 
            break
            ;;
        "Quit")
            break
            ;;
        *) echo "Invalid option";;
    esac
done
