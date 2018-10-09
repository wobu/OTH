declare -a strategy=("RR" "LRU" "RAND")
declare -a associativity=("1" "2" "4" "8" "16")

for s in "${strategy[@]}"
do
   for a in "${associativity[@]}"
    do
    ./Simulator.exe ./prg3.dat -cs 64 -ls 4 -ca 1 -mp 30 -ma 1,25 -rs $s -a $a
    done
done

