#!/bin/bash  

blue="/sys/class/leds/blue:ph21:led1/"
green="/sys/class/leds/green:ph07:led4/"
white="/sys/class/leds/white:ph11:led3/"
orange="/sys/class/leds/orange:ph20:led2/"

brightness="brightness"
trigger="trigger"

PS3='Please enter your choice: '
options=("Turn all led on" "Turn all led off" "Modify blue" "Modify orange" "Modify white" "Modify green" "Quit")
select opt in "${options[@]}"
do
    case $opt in
         "Turn all led on")
            echo 1 > $blue$brightness
            echo 1 > $orange$brightness
            echo 1 > $white$brightness
            echo 1 > $green$brightness
            break
            ;;

        "Turn all led off")
            echo 0 > $blue$brightness
            echo 0 > $orange$brightness
            echo 0 > $white$brightness
            echo 0 > $green$brightness
            break
            ;;

        "Modify blue")
			PS3='Please enter your choice: '
			blue_options=("Turn on" "Turn off" "Trigger cpu0" "Trigger cpu1" "Trigger timer" "Trigger heartbeat" "Quit")
			select blue_opt in "${blue_options[@]}"
			do
			    case $blue_opt in
			         "Turn on")
			            echo 1 > $blue$brightness
			            ;;

			        "Turn off")
			            echo 0 > $blue$brightness
			            ;;

			        "Trigger cpu0")
						echo cpu0 > $blue$trigger
			            ;;

			        "Trigger cpu1")
						echo cpu1 > $blue$trigger
			            ;;
			            
			        "Trigger timer")
						echo timer > $blue$trigger
			            ;;

			        "Trigger heartbeat")
						echo heartbeat > $blue$trigger
			            ;;

			        "Quit")
			            break
			            ;;
			           
			        *) echo "Invalid option";;
			    esac
			done

            break
            ;;

			"Modify orange")
			PS3='Please enter your choice: '
			orange_options=("Turn on" "Turn off" "Trigger cpu0" "Trigger cpu1" "Trigger timer" "Trigger heartbeat" "Quit")
			select orange_opt in "${orange_options[@]}"
			do
			    case $orange_opt in
			         "Turn on")
			            echo 1 > $orange$brightness
			            ;;

			        "Turn off")
			            echo 0 > $orange$brightness
			            ;;

			        "Trigger cpu0")
						echo cpu0 > $orange$trigger
			            ;;

			        "Trigger cpu1")
						echo cpu1 > $orange$trigger
			            ;;
			            
			        "Trigger timer")
						echo timer > $orange$trigger
			            ;;

			        "Trigger heartbeat")
						echo heartbeat > $orange$trigger
			            ;;

			        "Quit")
			            break
			            ;;
			           
			        *) echo "Invalid option";;
			    esac
			done

            break
            ;;

			"Modify white")
			PS3='Please enter your choice: '
			white_options=("Turn on" "Turn off" "Trigger cpu0" "Trigger cpu1" "Trigger timer" "Trigger heartbeat" "Quit")
			select white_opt in "${white_options[@]}"
			do
			    case $white_opt in
			         "Turn on")
			            echo 1 > $white$brightness
			            ;;

			        "Turn off")
			            echo 0 > $white$brightness
			            ;;

			        "Trigger cpu0")
						echo cpu0 > $white$trigger
			            ;;

			        "Trigger cpu1")
						echo cpu1 > $white$trigger
			            ;;
			            
			        "Trigger timer")
						echo timer > $white$trigger
			            ;;

			        "Trigger heartbeat")
						echo heartbeat > $white$trigger
			            ;;

			        "Quit")
			            break
			            ;;
			           
			        *) echo "Invalid option";;
			    esac
			done

            break
            ;;


			"Modify green")
			PS3='Please enter your choice: '
			green_options=("Turn on" "Turn off" "Trigger cpu0" "Trigger cpu1" "Trigger timer" "Trigger heartbeat" "Quit")
			select green_opt in "${green_options[@]}"
			do
			    case $green_opt in
			         "Turn on")
			            echo 1 > $green$brightness
			            ;;

			        "Turn off")
			            echo 0 > $green$brightness
			            ;;

			        "Trigger cpu0")
						echo cpu0 > $green$trigger
			            ;;

			        "Trigger cpu1")
						echo cpu1 > $green$trigger
			            ;;
			            
			        "Trigger timer")
						echo timer > $green$trigger
			            ;;

			        "Trigger heartbeat")
						echo heartbeat > $green$trigger
			            ;;

			        "Quit")
			            break
			            ;;
			           
			        *) echo "Invalid option";;
			    esac
			done

            break
            ;;


        "Quit")
            break
            ;;
        *) echo "Invalid option";;
    esac
done
