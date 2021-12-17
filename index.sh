echo "Hallo Selamat datang di Minimarket Al-Barokah";

echo "";
echo "Kelompok 22"

declare -a pilihan
declare -A menus
menus[0,0]=1
menus[0,1]=10
menus[0,2]="beras 12kg"

menus[1,0]=2
menus[1,1]=5
menus[1,2]="Mizone 1 liter"

menus[2,0]=3
menus[2,1]=25
menus[2,2]="Pampers L 40"

menus[3,0]=4
menus[3,1]=100
menus[3,2]="Minyak Kayu Putih 1 liter"

menus[4,0]=5
menus[4,1]=70
menus[4,2]="Mainan Kayu Putih 2 liter"

menus[5,0]=6
menus[5,1]=21
menus[5,2]="Minyak Kayu Putih 3 liter"

menus[6,0]=7
menus[6,1]=41
menus[6,2]="Mainan Bayi"

menus[7,0]=8
menus[7,1]=51
menus[7,2]="Mainan Anak"

menus[8,0]=9
menus[8,1]=61
menus[8,2]="gulaku 12kg"

menus[9,0]=10
menus[9,1]=50
menus[9,2]="Minyak Goreng Palmia 1 liter"

menus[10,0]=11
menus[10,1]=30
menus[10,2]="Aqua botol 2liter"

menus[11,0]=12
menus[11,1]=30
menus[11,2]="pampers s 40"

menus[12,0]=13
menus[12,1]=35
menus[12,2]="Minyak kayu putih 7 liter"

menus[13,0]=14
menus[13,1]=342
menus[13,2]="notebook"

menus[14,0]=15
menus[14,1]=42
menus[14,2]="bulpoint standard 1 pack"

menus[15,0]=16
menus[15,1]=48
menus[15,2]="Masker 20 pack"

length=${#menus[@]}
lengthbaru=$(expr $length / 3)

echo "==========================================";

echo "NAMA : Mohammad Firmansyah ";
echo "NPM : 20081010022";
echo "";

echo "NAMA : Ananda Krisna ";
echo "NPM : 200810100";
echo "";

echo "NAMA : M DAniel Karim ";
echo "NPM : 200810100";
echo "";

echo "==========================================";

echo " 1) Beras 12kg";

echo " 2) Mizone 1 liter";

echo " 3) Pampers L 40";

echo " 4) Minyak kayu putih 1 liter";

echo " 5) Minyak kayu putih 2 liter";

echo " 6) Minyak kayu putih 3 liter";

echo " 7) mainan bayi";

echo " 8) Mainan Anak ";

echo " 9) gulaku 12kg ";

echo " 10) Minyak Goreng Palmia 1 liter";

echo " 11) Aqua botol 2liter";

echo " 12) Pampers s 40";

echo " 13) Minyak kayu putih 7 liter";

echo " 14) notebook";

echo " 15) bulpoint standard 1 pack";

echo " 16) Masker 20 Pack ";

echo " 17) Keluar ";


echo "==========================================";


pil=0
while [ $pil -le 16 ]
do
        echo -n " Masukkan Pilihan Menu Anda $nama [1-17] : ";
        read pil

        if [ $pil -ne 17 ];
        then
        pilihan+=($pil)   
        else
                echo "Selamat tinggal dan terimakasih sudah berkunjung";
        fi
done   



echo "${pilihan[1]}"

length=${#pilihan[@]}
echo "==========================================";

echo " belanjaan : ";
i=0
for ((i;i<length;i=i+1))
do

        echo "${menus[${pilihan[i]},2]} | Harga : Rp.${menus[${pilihan[i]},1]}.000,00";

        nilai_sementara=${menus[${pilihan[i]},1]}
        total=$(expr $total + $nilai_sementara)

done

echo ""
echo "Total : $total.000"


