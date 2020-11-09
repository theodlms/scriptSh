#!/bin/bash

echo "*********************************************"
echo "************ Welcome to the MAZE ************"
echo "*********************************************"
echo ""
echo "You are lost inside a Maze, try to escape..."
echo ""
game_running=true
room_number=2
while [ "$game_running" = true ]
do
if [ $room_number -eq 1 ]
then
echo ""
echo "╔═════╣ n ╠═════╗"
echo "║               ║"
echo "║       ▲       ╩"
echo "║       ☻ ►     e"
echo "║               ╦"
echo "║               ║"
echo "╚═══════════════╝"
echo ""
echo "There are 2 doors in your room: (n)orth, (e)ast, where do you
want to go ?"
read choice
if [ "$choice" = "n" ]
then
clear
echo "> going to north..."
room_number=4
elif [ "$choice" = "e" ]
then
clear
echo "> going to east..."
room_number=2
else
echo "THIS CHOICE DOESN'T EXIST!"
fi
elif [ $room_number -eq 2 ]
then
echo ""
echo "╔═════╣ n ╠═════╗"
echo "║               ║"
echo "╩       ▲       ╩"
echo "w     ◄ ☻ ►     e"
echo "╦               ╦"
echo "║               ║"
echo "╚═══════════════╝"
echo ""
echo "There are 3 doors in your room: (n)orth, (w)est, (e)ast, where
do you want to go ?"
read choice
if [ "$choice" = "n" ]
then
clear
echo "> going to north..."
room_number=5
elif [ "$choice" = "w" ]
then
clear
echo "> going to west..."
room_number=1
elif [ "$choice" = "e" ]
then
clear
echo "> going to east..."
room_number=3
else
echo "THIS CHOICE DOESN'T EXIST!"
fi
elif [ $room_number -eq 3 ]
then
echo ""
echo "╔═════╣ n ╠═════╗"
echo "║               ║"
echo "╩       ▲       ║"
echo "w     ◄ ☻       ║"
echo "╦               ║"
echo "║               ║"
echo "╚═══════════════╝"
echo ""
echo "There are 2 doors in your room: (n)orth, (w)est, where do you want to go?"
read choice
if [ "$choice" = "n" ]
then
clear
echo "> going to north..."
room_number=6
elif [ "$choice" = "w" ]
then
clear
echo "> going to west..."
room_number=2
else
echo "THIS CHOICE DOESN'T EXIST!"
fi
elif [ $room_number -eq 4 ]
then
echo "                                     .___.    "
echo "                 /)               ,-^     ^-.  "
echo "               //               /           \  "
echo "       .-------| |--------------/  __     __  \-------------------.__  "
echo "       |WMWMWMW| |>>>>>>>>>>>>> | />>\   />>\ |>>>>>>>>>>>>>>>>>>>>>>:>    "
echo "        -------| |--------------| \__/   \__/ |------------------- ^^  "
echo "                \\               \    /|\    / "
echo "                 \)               \   \_/   /  "
echo "                                   |       |   "
echo "                                   |+H+H+H+|   "
echo "                                   \       /   "
echo "                                    ^-----^    "
echo ">>>>>>>>>>>> It's a trap... you are DEAD :/"
game_running=false
elif [ $room_number -eq 5 ]
then
echo ""
echo "╔═══════════════╗"
echo "║               ║"
echo "║               ║"
echo "║       ☻       ║"
echo "║       ▼       ║"
echo "║               ║"
echo "╚═════╣ s ╠═════╝"
echo ""
echo "it's a dead end go back (s)outh"
read choice
if [ "$choice" = "s" ]
then
clear
echo "> going to south..."
room_number=2
else
echo "THIS CHOICE DOESN'T EXIST!"
fi
elif [ $room_number -eq 6 ]
then
echo ">>>>>>>>>>>> You found the EXIT... Congratulations :)"
read choice
game_running=false
fi
done