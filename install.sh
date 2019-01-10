# #########################################
# Test install script
# #########################################

echo "Install started."
cd ..
echo "home:"
echo $HOME
cd $HOME
git clone "https://github.com/JurekInholland/dotfiles"
cd dotfiles
sh "script.sh"