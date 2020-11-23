nbItems = 20;


echo "||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
echo "||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
echo "|||||||||||||||||||| Welcome to Nim's game |||||||||||||||||||||"
echo "||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
echo "||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
echo ""
echo "Each player will have to choose from 1 to 3 items in each round."
echo "Who ever takes the last item wins the game!"
echo ""


while true
do

    echo "How many items do you want to display (must be a multiple of 4)?"
    read nbItems
    if [ `expr $nbItems % 4` -eq 0 ]
    then
        break
    else
        echo "Wrong value, make a new choice !"
    fi
done
echo ""
echo -n "You have decided to play with 4 elements ($nbItems) éléments :"
for i in `seq 1 $nbItems`
do
    echo -n "|"
done

echo ""

game_running=true

while [ "$game_running" = true ]
do
    echo ""
    echo ""
    echo "============ Player's Turn ============"
    echo "How many items do you want to take? You can take from 1 to 3."

    read choice
    if [ "$choice" -eq 1 ] || [ "$choice" -eq 2 ] || [ "$choice" -eq 3 ]
    then
        let "nbItems = nbItems - choice"
        echo -n "Il reste ($nbItems) élément(s) :"
        for i in `seq 1 $nbItems`
        do
            echo -n "|"
        done
        echo ""
        echo ""
        echo "========== Computer Turn =========="
        let "choiceIA = 4 - choice"
        echo "It takes $choiceIA element(s)"
        let "nbItems = nbItems - choiceIA"
        echo -n "There are ($nbItems) elements left:"
        for i in `seq 1 $nbItems`
        do
            echo -n "|"
        done
    else
        echo "This choice is not possible, you can remove from 1 to 3 elements"
    fi

    if [ "$nbItems" -eq 0 ]
    then
        echo ""
        echo "IA grabbed the last item!"
        echo "||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
        echo "||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
        echo "|||||||||||||||||||||||||| GAME OVER |||||||||||||||||||||||||||"
        echo "||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
        echo "||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
        echo ""
        game_running=falses
    fi
done
