#!/bin/bash
exec 3<>color_data
exec 4<>color_bl
while :
do
read -u 3 sensor
read -u 4 led

sensor_list=($sensor)

echo "--- new data ---" >> result.txt

if [[ ${sensor_list[1]} -gt ${sensor_list[2]} ]] && [[ ${sensor_list[1]} -gt ${sensor_list[3]} ]]
then
echo "R" >> result.txt
elif [[ ${sensor_list[2]} -gt ${sensor_list[1]} ]] && [[ ${sensor_list[2]} -gt ${sensor_list[3]} ]]
then
echo "G" >> result.txt
else
echo "B" >> result.txt
fi

echo led >> result.txt
echo "----------------" >> result.txt
done
