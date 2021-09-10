cd ~
ssh-keygen -t rsa -b 4096 -C "killerilaksha@gmail.com"
cat .ssh/id_rsa.pub | xclip

#copy key and paste in github

eval "$(ssh-agent -s)"

ssh-add ~/.ssh/id_rsa

git config --global user.email "killerilaksha@gmail.com"
git config --global user.name "Akilax0"

