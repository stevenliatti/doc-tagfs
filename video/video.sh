#!/bin/bash

rm -rf tagfs graph.png graph.dot
mkdir -p tagfs/code tagfs/images tagfs/docs/work
touch tagfs/code/hello.c tagfs/code/hello.h tagfs/code/power.rs 
touch tagfs/images/img1.png tagfs/images/img2.png tagfs/images/img3.png tagfs/images/img4.png
touch tagfs/docs/weekend.ods tagfs/docs/work/office.txt

read
clear

echo "$ tree tagfs"
read
tree tagfs
read
clear
echo "$ ./tag_manager -f tagfs -r"
read
./tag_manager -f tagfs -r
read
clear
echo "$ ./tag_manager -f tagfs/images/img1.png tagfs/images/img2.png tagfs/docs/weekend.ods -s family"
read
./tag_manager -f tagfs/images/img1.png tagfs/images/img2.png tagfs/docs/weekend.ods -s family
read
clear
echo "$ ./tag_manager -f tagfs/images -r -s persi"
read
./tag_manager -f tagfs/images -r -s persi
read
clear
echo "$ ./tag_manager -R persi perso"
read
./tag_manager -R persi perso
read
clear
echo "$ mv tagfs/docs/work tagfs"
read
mv tagfs/docs/work tagfs
read
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
echo "$ ./tag_manager -q family OR perso"
read
./tag_manager -q family OR perso
read
clear
echo "$ ./tag_manager -q family AND perso"
read
./tag_manager -q family AND perso
read
clear
echo "$ echo \"buy milk\" > tagfs/todo.txt"
read
echo "buy milk" > tagfs/todo.txt
read
clear
echo "$ rm -rf tagfs/code"
rm -rf tagfs/code
