#!/bin/bash

#loops

q=0
for i in {0..5}
do
    echo $i
done


# even odd finder

range="1 2 3 4 5 7 6 7 8 7 53 3" 
for i in $range
do
    q=`expr $i % 2`
    if [ $q -eq 0  ]
    then
        echo "$i: the numer is even"
        continue
    fi
        echo "$i: the number is odd"
done
#!/usr/bin/bash

echo "Content-type: text/html"
echo ""
echo "<html><head><title>Demo shell script</title></head><body>"
echo "Current directory is $(pwd)"
echo "</body></html>"
