cd ~
ssh-keygen -t rsa -b 4096 -C "{email}"
cat .ssh/id_rsa.pub | xclip

#copy key and paste in github

eval "$(ssh-agent -s)"

ssh-add ~/.ssh/id_rsa

git config --global user.email "{email}"
git config --global user.name "{git.username}"

