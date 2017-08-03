UTILS_COLOR_2='\033[1;47m'
UTILS_COLOR_1='\e[44;1;37m'
UTILS_NO_COLOR='\033[0m'

UTILS_LOG_COUNTER=0

function log(){ 
	UTILS_LOG_COUNTER=$((UTILS_LOG_COUNTER+1))
	printf "\n${UTILS_COLOR_1}==========================${UTILS_NO_COLOR}\n"
	printf ${UTILS_COLOR_1}${UTILS_LOG_COUNTER}." "${UTILS_NO_COLOR}" "
	echo $@
	printf "${UTILS_COLOR_1}==========================${UTILS_NO_COLOR}\n"
}