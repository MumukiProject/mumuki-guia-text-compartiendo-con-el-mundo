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
git remote add origin http://otra-pc/foo/bar
function git {
   ACTION=$1
   REMOTE=$2
   BRANCH=$3
   [[ "$ACTION" == "push" ]] && [[ "$REMOTE" == "origin" ]] && [[ "$BRANCH" == "master" ]] &&
   echo "El repositorio se actualizó correctamente" || /usr/bin/git $@
}
export -f git