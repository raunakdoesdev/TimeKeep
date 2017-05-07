DATE=$(date +%a-%m-%d-%Y)
START_TIME=$(date +%X)
echo "$START_TIME"
ssh schowdhuri@bdd3.tspankaj.com
END_TIME=$(date +%X)
echo "Worked from $START_TIME to $END_TIME" >> $DATE.time

# Pushes time card update to github.
git add -A
git commit -m "Updated GitHub Time Card for $DATE"
git push origin master
