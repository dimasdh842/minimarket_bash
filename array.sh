#!/bin/bash
#deklarasi array bernama nilai dan deklarasi variabel jumlah nilai dengan nilai awal
declare -a nilai
jumlahNilai=0

#input nilai
read -p "Masukkan Banyak Nilai yang ingin diinput : " jumlah

#pengulangan untuk memasukan tiap nilai yang user ingin inputkan kedalam array

i=1
for ((i;i<=jumlah;i=i+1))
do
	read -p "Nilai ke-$i: " angka
	nilai[$i]=$angka
done


#pengunglangan untuk mengambil nilai di dalam array dan dimasukkan kedalah variabel jumlah nilai
i=1
for ((i;i<=jumlah;i=i+1))
do
	let jumlahNilai=$jumlahNilai+nilai[$i]
	let i=$i+1;
done

#untuk menemukan nilai IPK dengan rumus jumlahNilai / jumlah
let IPK=jumlahNilai/jumlah

#Menampilkan hasil
echo "IPS = $jumlahNilai / $jumlah"
echo "IPK = $IPK"
