Just another easy toolbox addition to manage multiple traking branches all at once

In order to install the new git command just type :

	$ curl https://raw.github.com/ivoputzer/git-kickoff/master/install.sh -L -o - | sh
	
The usage is quite straightforward :
	
	$ git clone <your repository>
	
	$ git cd <your repository>
	
	$ git kickoff 	# creates local branches for remote ones, and sets them to track upstream changes
	
You can use `git kickoff` as well,  if you just want to pull changes for all branches!
