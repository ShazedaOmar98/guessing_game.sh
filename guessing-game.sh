echo "Please guess how many files are in the current directory" 

read guess 

name_of_file=$(ls | wc -l)

echo $name_of_file

while [[ $guess -ne $name_of_file ]]
do 

if [[ guess -gt name_of_file ]]
then
   echo "Try a lower value!"
   read guess 
elif [[ guess -lt name_of_file ]]
then 

   echo "try a higher value!" 
   read guess 
fi 

done

guess.game 

echo "Congrats! You won!" 
