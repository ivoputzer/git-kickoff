#!/bin/bash

echo ">> installing git-kickoff"

if which git > /dev/null; then
	echo "\033[1;32m✓ dependencies are fine, let's move on...\033[0m"
else
	echo "\033[1;31m✗ dude you need git in order to use git-kickoff... \033[0m"; exit 1
fi

echo "\033[1;32m✓ git directory located in $(git --exec-path)...\033[0m"

git_core_path=$(git --exec-path)

if [ -f "$git_core_path/git-kickoff" ]; then
	echo "\033[1;31m✗ please uninstall brefore trying to install things again! \033[0m"; exit 1
fi

echo "\033[1;32m✓ cloning repository to home directory...\033[0m"

git clone http://github.com/ivoputzer/git-kickoff.git "$HOME/.git-kickoff"

echo "\033[1;32m✓ copying files to git-core folder...\033[0m"

cp "$HOME/.git-kickoff/git-kickoff" "$git_core_path/git-kickoff" &> /dev/null

echo "\033[1;32m✓ making files executable...\033[0m"

chmod +x "$git_core_path/git-kickoff" &> /dev/null

echo "\033[1;32m✓ removing temporary files...\033[0m"

rm -rf $HOME/.git-kickoff &> /dev/null

# todo : echo "\033[1;32m✓ adding aliases to bashrc...\033[0m"

# todo : echo "\033[1;32m✓ adding aliases to zshrc...\033[0m"

echo "= done!"