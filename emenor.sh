touch cities.txt
while read ciudad mes ano consumo ; do
    if [ ! `grep $ciudad cities.txt` ];then
        echo $ciudad >> cities.txt
    fi
done< consumos.txt
while read ciudad mes ano consumo; do
    if [ `grep $ciudad cities.txt` ];then
            echo " `./cmedia.sh $ciudad`" $ciudad>> medias.txt 
    fi
    done< consumos.txt
    
    sort medias.txt| head -n2 |tail -n1| awk '{print $2}'
rm cities.txt
rm medias.txt

