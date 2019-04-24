function get_dir() {
  PRINTED="$( pwd )"
  result="${PWD##*/}"
  printf "%s\n" "$result"
}
function get_char() {
	if [[ $EUID -ne 0 ]]; then
		echo "$" 
	else
		echo "#"
	fi
}

printf "\t\t\tWelcome!\n\n"

while :; do
  CHAR="$( get_char )"
  DIR="$( get_dir )"
   # print current working directory
  echo -n "[ $DIR ]$CHAR "

  read input
  case "$input" in 
    "xt") exit 0;;
  esac
  eval $input
done
