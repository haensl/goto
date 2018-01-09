function goto {
  local path=$1
  if [ -n "${2}" ]; then
    path="${path}/${2}"
  fi

  if [ -z $GOTOPATH ]; then
    local GOTOPATH=(${HOME})
  fi

  local projectfolders=(${GOTOPATH//:/ })
  local project
  local found=false
  for projectfolder in "${projectfolders[@]}"
  do
    project="${projectfolder}/${path}"
    if [ -d "${project}" ]; then
      cd "${project}"
      found=true
    fi
  done

  if [ "$found" = false ]; then
    echo "Uhm...nope."
  fi
}
