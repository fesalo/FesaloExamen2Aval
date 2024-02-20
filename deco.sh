encontrar=`cat consumos.txt | grep $1 | wc -l`
if [ $encontrar -gt 0 ];then
    total=0
    cont=0
    while read ciudad mes ano consumo; do
        if [ $ciudad == $1 ];then
            cont=$((cont+1))
            total=$((total+consumo))
        fi
    done< consumos.txt
    media=$((total/cont))
    if [ $media -lt 400 ];then
        echo "ECO"
    else 
        echo "NO ECO"
    fi
else
    read -p "Introduce una ciudad correcta: " valor
    ./atotal.sh $valor
fi

