#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE games, teams")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do 
# Get the team_id
  if [[ $WINNER != "winner" ]]
  then 
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")

#If not found, then insert
  if [[ -z $WINNER_ID ]]
  then 
    INSERT_WINNER_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
    
    if [[ $INSERT_WINNER_RESULT = "INSERT 0 1" ]]
    then 
    echo Inserted into teams, $WINNER
    fi

#Get next team_id
WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
fi 


#Get opponent names
  
OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

#If not found, then insert
  if [[ -z $OPPONENT_ID ]]
  then 
    INSERT_OPPONENT_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
    if [[ $INSERT_OPPONENT_RESULT = "INSERT 0 1" ]]
    then 
    echo Inserted into teams, $OPPONENT
  fi
fi
#Get next game_id
OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

echo "$($PSQL "INSERT INTO games(year,round,winner_goals,opponent_goals,winner_id,opponent_id) VALUES($YEAR,'$ROUND',$WINNER_GOALS,$OPPONENT_GOALS,$WINNER_ID,$OPPONENT_ID)")"
          
fi

done

