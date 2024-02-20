while read ciudad mes ano consumo; do
    if [[ "$consumo" =~ ^[0-9]+$ ]];then
        echo $ciudad $mes $ano $consumo >> minmax.txt
    fi
done< consumos.txt
min=`sort -k 4 minmax.txt | head -n 1`
max=`sort -k 4 minmax.txt | tail -n 1` 
echo "Consumo máximo: $max"
echo "Consumo mínimo: $min"
rm minmax.txt