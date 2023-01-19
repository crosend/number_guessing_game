#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=number_guessing_game --no-align --tuples-only -c"


echo "Enter your username:"
read USERNAME

USERNAME_IN_DATABASE=$($PSQL "SELECT username FROM guesses WHERE username = '$USERNAME';")

if [[ -z $USERNAME_IN_DATABASE ]]
then
  echo Welcome, $USERNAME! It looks like this is your first time here.
else
  DISTINCT_GAMES=$($PSQL "SELECT COUNT(DISTINCT(game_id)) FROM guesses WHERE username = '$USERNAME'")
  BEST_GAME=$($PSQL "SELECT MAX(guess) FROM guesses WHERE username='$USERNAME';")
  echo "Welcome back, $USERNAME! You have played $DISTINCT_GAMES games, and your best game took $BEST_GAME guesses."
fi

GAME_ID=$(($($PSQL "SELECT MAX(game_id) FROM guesses;") + 1))
RANDOM_NUMBER=$(( $RANDOM % 1000 + 1 ));

echo Guess the secret number between 1 and 1000:

NUMBER_GUESSES=0
while read GUESS
do
  if [[ "$GUESS" =~ ^[0-9]+$ ]];
  then 
    NUMBER_GUESSES=$(($NUMBER_GUESSES + 1))
    if [ $RANDOM_NUMBER -eq $GUESS ];
    then
      echo "You guessed it in $(($NUMBER_GUESSES)) tries. The secret number was $(($RANDOM_NUMBER)). Nice job!"
      INSERT_GUESS=$($PSQL "INSERT INTO guesses(game_id, username, guess) VALUES($GAME_ID, '$USERNAME', $NUMBER_GUESSES);")
      break;
    elif [ $RANDOM_NUMBER -lt $GUESS ];
    then
      echo "It's lower than that, guess again:"
    elif [ $RANDOM_NUMBER -gt $GUESS ];
    then
      echo "It's higher than that, guess again:"
    fi
  else
    echo "That is not an integer, guess again:"
  fi
done



