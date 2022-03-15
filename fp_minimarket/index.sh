echo "Hello Selamat Datang di Minimarket Al-Barokah"

echo "";
echo "Kelompok 21"

#deklarasikan 2 buah array
declare -a pilihan
declare -A menus

#masukkan nilai array menus 2d
menus[1,0]=1
menus[1,1]=10
menus[1,2]="Beras 12kg"

menus[2,0]=2
menus[2,1]=5
menus[2,2]="Mizone 1 liter"

menus[3,0]=3
menus[3,1]=25
menus[3,2]="Pampers L 40"

menus[4,0]=4
menus[4,1]=100
menus[4,2]="Minyak Kayu Putih 1 liter"

menus[5,0]=5
menus[5,1]=70
menus[5,2]="Mainan Kayu Putih 2 liter"

menus[6,0]=6
menus[6,1]=21
menus[6,2]="Minyak Kayu Putih 3 liter"

menus[7,0]=7
menus[7,1]=41
menus[7,2]="Mainan Bayi"

menus[8,0]=8
menus[8,1]=51
menus[8,2]="Mainan Anak"

menus[9,0]=9
menus[9,1]=61
menus[9,2]="gulaku 12kg"

menus[10,0]=10
menus[10,1]=50
menus[10,2]="Minyak Goreng Palmia 1 liter"

menus[11,0]=11
menus[11,1]=30
menus[11,2]="Aqua botol 2liter"

menus[12,0]=12
menus[12,1]=30
menus[12,2]="pampers s 40"

menus[13,0]=13
menus[13,1]=35
menus[13,2]="Minyak kayu putih 7 liter"

menus[14,0]=14
menus[14,1]=342
menus[14,2]="notebook"

menus[15,0]=15
menus[15,1]=42
menus[15,2]="bulpoint standard 1 pack"

menus[16,0]=16
menus[16,1]=48
menus[16,2]="Masker 20 pack"

menus[17,0]=17
menus[17,1]=24
menus[17,2]="Masker 10 pack"

menus[18,0]=18
menus[18,1]=12
menus[18,2]="Masker 5 pack"

#mengambil nilai panjang array menus
length=${#menus[@]}

#mengambil nilai panjang array lalu dibagi 3 untuk mendapatkan nilai yang sesuai dengan jumlah produk
lengthbaru=$(expr $length/3)

echo "============================"
echo "Nama : Mohammad Firmansyah";
echo "NPM : 20081010022";
echo "";

echo "Nama : Ananda Krisna Putra P";
echo "NPM : 20081010065";
echo "";

echo "Nama : M. Daniel S. Karim";
echo "NPM : 20081010059";
echo "";

echo "1) Beras 12 kg";

echo "2) Mizone 1 Liter";

echo "3) Pampers L 40";

echo "4) Minyak Kayu Putih 1 liter";

echo "5) Minyak Kayu Putih 2 liter";

echo "6) Minyak Kayu Putih 3 liter";

echo "7) maianan bayi";

echo "8) mainan anak";

echo "9) gulaku 12 kg";

echo " 10) Minyak Goreng Palmia 1 liter";

echo " 11) Aqua botol 2liter";

echo " 12) Pampers s 40";

echo " 13) Minyak kayu putih 7 liter";

echo " 14) notebook";

echo " 15) bulpoint standard 1 pack";

echo " 16) Masker 20 Pack ";

echo " 17) masker 10 pack";

echo " 18) Masker 5 Pack ";

echo " 19) Keluar ";

echo "============================";

#melakukan looping untuk mengambil input pilihan user
pil=0
while [ $pil -le 18 ]
do 

#masukkan pilihan user
echo -n "Masukkan Pilihan Menu Anda [1-19]:";
read pil 

#jika pilihan user tidak sama dengan 19 maka
#masukkan pilihan user dalam array pilihan

if [ $pil -ne 19 ];
then 
pilihan+=($pil)
else
echo "Selamat tinggal dan terimakasih sudah berkunjung";
fi
done

#mengambil panjang array pilihan
length=${#pilihan[@]}


#melakukan looping belanjaan user
i=0
for((i;i<length;i=i+1))
do
#menampilkan pilihan user
echo "${menus[${pilihan[i]},2]} | harga: Rp.${menus[${pilihan[i]},1]}.000"

# total nilai belanjaan
nilai_sementara=${menus[${pilihan[i]},1]}
total=$(expr $total + $nilai_sementara)
done

# menampilkan total
echo ""
echo "Total : $total .000"