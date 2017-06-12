echo "Attempting to ssh to github.com"
ssh -T git@github.com
echo
echo "Git status:"
git status
echo "removing all pyc files before commit"
sudo -H find . -name "*.pyc" -exec rm -rf {} \;
git add --all
git commit -m 'committing new stuff'
git push -u origin master
exit
