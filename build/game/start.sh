#! /bin/bash

#params
scriptDir="/game"

#function
fire(){
  labels=(0 0 0 0 0 0)
  #generate marks
  for i in `seq 0 5 | shuf -n $1 | sort | uniq`
  do  
    labels[i]=1
  done
  #shoot
  idx=$(( $RANDOM % 6 ))
  res=${labels[$idx]}
  return $res
}

#banner
figlet -k "cyber"
figlet -k "roulette"
echo "Press the Enter key to continue"
read

#init
#total=$(( $RANDOM % 11 ))
#current=1
#figlet -k "$total   ROUNDS"
#echo "You need to persist for $total rounds"
#echo "Press the Enter key to continue"
#read
total=1

#main
for i in `seq $total`;do
  #echo "ROUND $i"
  #load
  bullets=$(( $RANDOM % 6 ))
  cat $scriptDir/ascii/gun
  figlet -k "==> $bullets/6 <=="
  echo "The gun is loaded with $bullets bullets"
  echo "Press the Enter key to pull the trigger"
  read
  #fire
  fire $bullets
  res=$?
  #dead
  if [ $res == 1 ];then
    figlet -k "YOU"
    figlet -k "DIED"
    bash $scriptDir/dead-cmd.sh
    exit
  fi
  #alive
  figlet -k "YOU"
  figlet -k "SURVIVED"
  echo "The gun did not discharge a bullet"
  echo "You survived"
  pkill -9 shellinaboxd
  #echo "Press the Enter key to enter the next round"
  read
done

#win
#figlet -k "YOU"
#figlet -k "WIN"
#echo "you lived to the end"
#echo "you are victorious"
