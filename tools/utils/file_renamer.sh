#!/bin/bash

# modifies a file name and php imports of this file
# ex : file_renamer.sh Pane Cardwall_Pane
# ex : file_renamer.sh Pane Cardwall/Cardwall_Pane
set -x
old_filename=$1.class.php
new_filename=$2.class.php

imports=$(grep -rl -e "require.*$old_filename" *)
sed -i "s%$old_filename%$new_filename%" $imports

old_file_full_path=$(find . -name ${old_filename})
new_file_full_path=$(echo $old_file_full_path | sed "s%$old_filename%$new_filename%")

git mv $old_file_full_path $new_file_full_path
