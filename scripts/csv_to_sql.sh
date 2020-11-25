origin=$1
destine=$2

while read line; do
    echo $line >> $destine;
done < $origin

sed -i 's/NULL//g' $destine;

sed -i 's/;/,/g' $destine;

sed -i 's/,$//g' $destine;

sed -i 's/,/","/g' $destine;

sed -i 's/"//' $destine;

sed -i 's/$/"/g' $destine;

sed -i 's/^/INSERT INTO food (id, name, kcal, protein, carbohydrate, fiber) VALUES (/' $destine;

sed -i 's/$/);/' $destine;