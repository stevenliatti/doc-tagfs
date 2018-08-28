#!/bin/bash

rm graph.png graph.dot
rm -rf my
unzip -o my.zip
# set -x

read
clear

# echo "$ pwd"
# read
# pwd
# read
# clear
echo "$ tree my"
read
tree my
read
clear
echo "$ ./tag_manager -f my -r"
read
./tag_manager -f my -r
read
clear
echo "$ ./tag_manager -f my/images/2017/img1.png my/images/2018/img3.png my/docs/weekend.ods -s perso"
read
./tag_manager -f my/images/2017/img1.png my/images/2018/img3.png my/docs/weekend.ods -s perso
read
clear
echo "$ ./tag_manager -f my/docs/work -r -s pro"
read
./tag_manager -f my/docs/work -r -s pro
read
# clear
# echo "$ ./tag_manager -f my/images -r -s pictures"
# read
# ./tag_manager -f my/images -r -s pictures
# read
clear
echo "$ ./tag_manager -f my/images/2017/img1.png my/images/2018/* -s family"
read
./tag_manager -f my/images/2017/img1.png my/images/2018/* -s family
read
clear
echo "$ ./tag_manager -f my/code/power.rs my/docs/work/office.txt -s secrt"
read
./tag_manager -f my/code/power.rs my/docs/work/office.txt -s secrt
read
clear
echo "$ ./tag_manager -R secrt secret"
read
./tag_manager -R secrt secret
read
clear
# echo "$ ./tag_manager -f my -r"
# read
# ./tag_manager -f my -r
# read
clear
echo "$ ./tag_manager -l"
read
./tag_manager -l
read
clear
echo "$ ./tag_manager -q perso"
read
./tag_manager -q perso
read
clear
echo "$ ./tag_manager -q secret"
read
./tag_manager -q secret
read
clear
echo "$ ./tag_manager -q secret OR pro"
read
./tag_manager -q secret OR pro
read
clear
echo "$ ./tag_manager -q secret AND pro"
read
./tag_manager -q secret AND pro
read
clear
echo "$ ./tag_manager -q family AND perso"
read
./tag_manager -q family AND perso
read
clear
echo "$ echo \"buy milk\" > my/todo.txt"
read
echo "buy milk" > my/todo.txt
read
clear
echo "$ ./tag_manager -f my/todo.txt -s tasks"
read
./tag_manager -f my/todo.txt -s tasks
read
clear
echo "$ rm -rf my/code"
rm -rf my/code

# set +x
