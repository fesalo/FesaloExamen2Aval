
    touch ciudades.txt
    total=0
    cont=0
    while read ciudad mes ano consumo; do
        if [ ! `grep $ciudad ciudades.txt` ];then
            echo $ciudad >> ciudades.txt
        fi
    done< consumos.txt


