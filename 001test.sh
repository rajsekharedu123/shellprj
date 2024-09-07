LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME-$TIMESTAMP.log"
mkdir -p $LOGS_FOLDER
echo $SCRIPT_NAME
echo $TIMESTAMP
echo 

CHECK_ROOT()
{

    if [ $USERID -ne 0 ]
    then 
        echo " pls use root access/privilages" | tee -a $LOG_FILE
        exit 1
    else
        echo "u logged with user : $USERID " | tee -a $LOG_FILE
    fi
}


echo -e "$R script started executing  at $TIMESTAMP $N" | tee -a $LOG_FILE
USERID=$(id -u)
CHECK_ROOT
