media=`./cmedia.sh $1`
    if [ $media -lt 400 ];then
        echo "ECO"
    else 
        echo "NO ECO"
    fi


