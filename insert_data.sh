#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE TABLE games, teams")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  # get team_id
  WINNER_TEAM=$($PSQL "SELECT name from teams where name='$WINNER'")
  if [[ $WINNER != "winner" ]]
    then
    #if not found
    if [[ -z $WINNER_TEAM ]]
      then
       # insert team name
       INSERT_WINNER=$($PSQL "INSERT INTO teams(name) values('$WINNER')")
       if [[ $INSERT_WINNER == "INSERT 0 1" ]]
        then
          echo Inserted into teams winner, $WINNER
        fi
    fi
  fi

  OPPONENT_TEAM=$($PSQL "SELECT name from teams where name='$OPPONENT'")
  if [[ $OPPONENT != "opponent" ]]
    then
      #if not found
      if [[ -z $OPPONENT_TEAM ]]
        then
        # insert team name
        INSERT_OPPONENT=$($PSQL "INSERT INTO teams(name) values('$OPPONENT')")
        if [[ $INSERT_OPPONENT == "INSERT 0 1" ]]
        then
          echo Inserted into teams opponent, $OPPONENT
        fi
      fi
  fi

  if [[ $YEAR != "year" ]]
  then
    WINNER_TEAM=$($PSQL "SELECT team_id from teams where name='$WINNER'")
    OPPONENT_TEAM=$($PSQL "SELECT team_id from teams where name='$OPPONENT'")
    INSERT_GAMES_RESULTS=$($PSQL "INSERT INTO games(year, round, winner_goals, opponent_goals, winner_id, opponent_id) values($YEAR, '$ROUND', $WINNER_GOALS, $OPPONENT_GOALS, '$WINNER_TEAM', '$OPPONENT_TEAM')")
    if [[ $INSERT_GAMES_RESULTS == "INSERT 0 1" ]]
        then
          echo Inserted into games, $YEAR $ROUND $WINNER_GOALS $OPPONENT_GOALS
        fi
  fi
done
