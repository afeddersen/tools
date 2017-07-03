
# Generate a new RSA ssh key
ssh-keygen -t rsa -C "anthony.feddersen@gmail.com"
# Copy the key to your clipboard
pbcopy < ~/.ssh/id_rsa.pub

# ugly bash to do confirmation before moving on
read -p "Ready to test ssh? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
  # Test that ssh works
  ssh -T git@github.com
fi

# The same ugly bash to do confirmation before moving on
read -p "Ready to test ssh? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
  git config --global user.name "Anthony Feddersen"
  git config --global user.email "anthony.feddersen@gmail.com"
  git config --global github.user afeddersen
  git config --global core.editor "atom"
  git config --global color.ui true
fi

echo "To save your ssh key/passphrase to keychain"
echo "you must adding the following snippet to the"
echo "config file in the .ssh directory"
