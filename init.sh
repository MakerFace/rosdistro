#!/usr/bin/env bash
SRC=https://raw.githubusercontent.com
DES=file:///etc
file[0]="/usr/lib/python2.7/dist-packages/rosdistro/__init__.py"
file[1]="/usr/lib/python2.7/dist-packages/rosdep2/gbpdistro_support.py"
file[2]="/usr/lib/python2.7/dist-packages/rosdep2/sources_list.py"
file[3]="./rosdistro/master/rosdep/sources.list.d/20-default.list"

for f in "${file[@]}"
do
    echo $f
    `sed -i s@$SRC@$DES@g $f`
    `sed -i s@/etc/ros@${PWD}@g $f`
done

# sed -i s@/etc/ros@${PWD}@g ${file[2]}
# mkdir -p /etc/ros/
# cp -r rosdistro /etc/ros/