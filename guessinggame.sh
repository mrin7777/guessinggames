




function guessinggame
{
   #taking the input from the user
   echo "Guess how many files are there in current working directory:"
   read guess
  
   no_of_files=$(ls | wc -l)
} 

guessinggame 
#while loop to check whether the guess is equal total or not. 
while [[ $guess -ne $no_of_files ]]
do
   
   if [[ $guess -gt `expr $no_of_files + 5` ]]
   then
     echo "Guess is too high! Try again.."
  
   elif [[ $guess -le `expr $no_of_files - 5` ]]
   then
     echo "Guess is too far ! Try again.."
   
   else
      echo "Guess is close to the real value! Try again.."
   fi
   guessinggame  
done

echo "Congratulations!!!You have guessed the right value.The number of files are $total"

