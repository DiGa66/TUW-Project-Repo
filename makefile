date = $$(date -d today)
numlines = $$(cat guessinggame.sh | wc -l)
README.md: makefile
	echo "# The final project of 'The Unix Workbench' course" > README.md
	echo "## Created by Dmitry Ganzha on $(date)" >> README.md
	echo "There is $(numlines) in guessingame.sh file" >> README.md
