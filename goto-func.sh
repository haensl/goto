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
  for projectfolder in "${projectfolders[@]}"
  do
    project="${projectfolder}/${path}"
    if [ -d "${project}" ]; then
      cd "${project}"
    fi
  done
}
