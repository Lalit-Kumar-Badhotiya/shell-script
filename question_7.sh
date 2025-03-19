#!/bin/bash

display_calendar() {
    echo "Current month's calendar:"
    cal
}

display_date_time() {
    echo "Today's date and time:"
    date
}

display_logged_in_users() {
    echo "Users currently logged in the system:"
    who
}

display_name_at_position() {
    echo "Enter the X and Y position to display your name:"
    read -p "X Position: " x
    read -p "Y Position: " y
    tput cup $y $x
    echo "Lalit"
    tput sgr0
}

display_terminal_number() {
    echo "Your terminal number is:"
    tty
}

while true
do
    echo ""
    echo "------- Menu -------"
    echo "1. Display calendar of current month"
    echo "2. Display today's date and time"
    echo "3. Display users currently logged in"
    echo "4. Display your name at a given x,y position"
    echo "5. Display your terminal number"
    echo "6. Exit"
    echo "---------------------"
    read -p "Enter your choice: " choice

    case $choice in
        1)
            display_calendar
            ;;
        2)
            display_date_time
            ;;
        3)
            display_logged_in_users
            ;;
        4)
            display_name_at_position
            ;;
        5)
            display_terminal_number
            ;;
        6)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid option! Please try again."
            ;;
    esac
done