#!/usr/bin/env bash


app_folder="$HOME/.local/share/applications"

mapfile -t apps < <(find . -type f -name "*.desktop" -printf "%f\n")

if [ ! -d "$app_folder" ];
then
    mkdir -p "$app_folder"
fi

for app in ${apps[@]};
do
    if [ ! -f "$app_folder/$app" ];
    then
        ln -s "$(pwd)/$app" "$app_folder/$app"
    fi
done


