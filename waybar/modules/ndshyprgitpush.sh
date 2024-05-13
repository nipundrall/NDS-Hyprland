#!/bin/bash

cowsay " Okay $USER i'll push NDS-Hyprland repository"

cd NDS-Hyprland

cowsay " started"

git add .

git commit -m 'nds'

git push origin main

cowsay "it's Done"
