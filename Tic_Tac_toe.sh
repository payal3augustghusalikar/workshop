#! /bin/bash -x
echo "welcome to tic tac toe game"

function resetTheBoard()
{
 for (( i=1; i<=9; i++ ))
 do

   boardOfTicTacToe["$i"]="-";

 done
 displayBoard
}


function Autosymbol()
{

	result=$((RANDOM%2))

        if [ $result -eq 1 ]
        then

                player='X'
                computer='O'
                echo "Player symobol : X | Computer symbol : O"
                echo "Player plays First"
        else
                player='O'
                computer='X'
                echo "Player symobol : O | Computer symbol : X"
                echo "Computer Plays First"
        fi
}

function userinput()
{


 read -p "enter the position [1-9] : " playerPosition
        if [ ${boardOfTicTacToe[$playerPosition]} == '-' ]
        then
                boardOfTicTacToe[$playerPosition]=$player
        else
                echo "not possible"
                echo "enter another case"
                userinput
        fi

}


function displayBoard()
{
   echo "    |---|---|---|"
   echo "    | "${boardOfTicTacToe[1]}" | "${boardOfTicTacToe[2]}" | "${boardOfTicTacToe[3]}" |"
   echo "    |---|---|---|"
   echo "    | "${boardOfTicTacToe[4]}" | "${boardOfTicTacToe[5]}" | "${boardOfTicTacToe[6]}" |"
   echo "    |---|---|---|"
   echo "    | "${boardOfTicTacToe[7]}" | "${boardOfTicTacToe[8]}" | "${boardOfTicTacToe[9]}" |"
   echo "    |---|---|---|"

}
resetTheBoard
Autosymbol
userinput
