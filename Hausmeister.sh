                                                                                                                       hausmeister.sh                                                                                                                           
#!/bin/bash
# ArchLinux Hausmeisterscript
# By DerTopher
echo 'Versuche Pakete ohne Dependency zu finden und zu entfernen; Befehl: "sudo pacman -R $(pacman -Qtdq)"'
sudo pacman -R $(pacman -Qtdq)  --noconfirm
printf 'j\n\n'
 
echo 'Versuche den Cache von nicht installierten oder entfernten Pakten (pacman) zu löschen; \n Befehle: "sudo pacman -Scc", "paccache -dk2 && paccache -duk0" und "sudo paccache -vrk2 && sudo paccache -vruk0"'
yes | sudo pacman -Scc  --noconfirm
paccache -dk2 && paccache -duk0  --noconfirm
sudo paccache -vrk2 && sudo paccache -vruk0  --noconfirm


echo -e 'Versuche den Cache von Pacaur zu leeren. Befehle:"sudo pacaur -Scc" und "pacaur -Sac"'
yes | sudo pacaur -Scc  --noconfirm
yes | pacaur -Sac  --noconfirm

echo -e 'Versuche den Cache von yay zu leeren. Befehle:"sudo yay -Scc" und "yay -Sac"'
yes | sudo yay -Scc --noconfirm
yes | yay -Sac --noconfirm

echo "Rechner aufgeräumt!"

