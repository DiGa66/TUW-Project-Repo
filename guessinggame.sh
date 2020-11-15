function guess_more {
  echo "Guess once more"
  read num
}

num_of_files=$(ls -la | grep '^-' | wc -l)

OK=0

echo "Guess the number of files in current directory"
read num

while [[ OK -eq 0 ]]
do  
  if [[ $num -lt $num_of_files ]]
  then
	echo "too small number"
	guess_more
  elif [[ $num -gt $num_of_files ]]
  then
	echo "too large number"
	guess_more
  else
	echo "Congratulations! Your guess is correct!"
	echo "The number of files is $num_of_files" 
	let OK=1
  fi
done

