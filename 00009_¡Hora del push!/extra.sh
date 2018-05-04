mkdir libro-maravilloso
cd libro-maravilloso
git init .
touch capitulo1.txt
echo "Había un avestruz." >> capitulo1.txt
git add capitulo1.txt
function git {
  STATUS=$(/usr/bin/git status)
  ACTION=$1
  REMOTE=$2
  BRANCH=$3
  [[ "$ACTION" == "push" ]] && [[ "$REMOTE" == "origin" ]] && [[ "$BRANCH" == "master" ]] && [[ $STATUS = *"nothing to commit"* ]] &&
  raise error "No tenés permisos para actualizar el repositorio en Github" || /usr/bin/git $@
}
export -f git