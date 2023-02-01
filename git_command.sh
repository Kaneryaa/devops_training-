#!/bin/bash
#in this bash we lean 1. Branchin 2. reset & revet 3 cherry pick 4. comflict resolved 5. merge and rebase 6. squash commint

touch demo_class
echo "========================"
git log --oneline
echo "======================="
echo " List of Branch "
git branch

echo "======================="
echo "created one new branch"
git checkout -b dev

echo "======================"
git branch

echo "====================="
echo " ALl files and folder on local server"
ls
echo "==================="

echo "add new files and folder on repositry"
git add .

echo "===================="

echo "commit"
git commit -m " commits your all files and folder sucessfully:"

echo "=================="
echo " status "

git status 

echo "========================"
echo " log "

#git log

echo " show "

#git show

echo "======================="
echo " branch switched "

git checkout -d tester


echo "====================="
echo "  config      "
#git config --global user.name 
#git config --global user.email

echo "===================="
echo " git status "
#git status

echo "=================="
#git add firstfile.txt

echo "=================="
#git commit -m "added first text file"

echo "==================="
#git add second_file.txt


echo "================="
#git commit -m "seconf feature add "


echo "=================="

#git log --oneline 

echo "================"
#git diff

echo "====================="
#git restore firstfile.txt

echo "=================="
#git status

echo "=================="
#git log --oneline

echo "====================="
#git revert 42bc005

echo "==================="
#git remote show origin  


