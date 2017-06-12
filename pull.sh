# Attempts to ssh to GitHub
# Seems to solve the connection issues and/or authentication issues
echo "Attempting to ssh to github.com"
ssh -T git@github.com
echo
echo "Git status:"
git status
git pull origin master
exit
