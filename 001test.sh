LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME-$TIMESTAMP.log"
mkdir -p $LOGS_FOLDER
echo $SCRIPT_NAME
echo $TIMESTAMP
echo 

echo -e "$R Please run this script with root priveleges $N" | tee -a $LOG_FILE