mkdir libro-maravilloso
cd libro-maravilloso
git init .
touch capitulo1.txt
echo "Había un avestruz." >> capitulo1.txt
git add capitulo1.txt
git commit -m "Primer capítulo"
touch capitulo2.txt
echo "Una historia" >> capitulo2.txt
git add capitulo2.txt
git commit -m "Segundo capítulo"