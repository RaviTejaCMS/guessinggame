all:README.md

README.md:
	echo "# Guessinggame.sh" > README.md
	echo "# For [The Unix Workbench](https://www.coursera.org/learn/unix/home/welcome) course" >> README.md
	echo -n "README.md created on " >> README.md
	date >> README.md
	echo -n "Number of lines in guessinggame.sh: " >> README.md
	wc -l < ./guessinggame.sh >> README.md
	echo "Author : Ravi Teja" >> README.md	