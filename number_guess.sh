#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
echo "Enter your username:"
read USERNAME
USERNAME_AVAIL=$($PSQL "SELECT username FROM users WHERE username='$USERNAME'")
GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM users INNER JOIN games USING(user_id) WHERE username='$USERNAME'")
BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM users INNER JOIN games USING(user_id) WHERE username='$USERNAME'")

if [[ -z $USERNAME_AVAIL ]]
  then
    INSERT_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')") 
    echo "Welcome, $USERNAME! It looks like this is your first time here."
  else
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

RANDOM_NUM=$((1 + $RANDOM % 1000))
GUESSES=1
echo "Guess the secret number between 1 and 1000:"
while read GUESS
do
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
    then
    echo "That is not an integer, guess again:"
    else  
    if [[ $GUESS -eq $RANDOM_NUM ]]
      then
      break;
      else
        if [[ $GUESS -gt $RANDOM_NUM ]]
        then
          echo -n "It's lower than that, guess again:"
        elif [[ $GUESS -lt $RANDOM_NUM ]]
        then
        echo -n "It's higher than that, guess again:"
      fi
    fi
  fi  
  GUESSES=$(( $GUESSES + 1 ))
done

if [[ $GUESSES == 1 ]]
  then
    echo "You guessed it in $GUESSES tries. The secret number was $RANDOM_NUM. Nice job!"
  else
    echo "You guessed it in $GUESSES tries. The secret number was $RANDOM_NUM. Nice job!"
fi

USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
INSERT_GAME=$($PSQL "INSERT INTO games(user_id, guesses) values($USER_ID, $GUESSES)")
