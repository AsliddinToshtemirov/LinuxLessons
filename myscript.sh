#!/bin/bash
# ================================================
# Uyga vazifa: Linux buyruqlari bilan skript yozish
# Topshiriqlarni ketma-ket bajarib chiqing.
# Har bir qadamni bajarishda izohlardan foydalaning.
# ================================================

# 1. Operatsion tizim va distributiv haqida to‘liq ma’lumotni ekranga chiqaring.
uname -a
lsb_release -a

# 2. Hozirgi foydalanuvchi nomini ekranga chiqaring.

whoami

# 3. `ls` buyrug'i haqidagi dokumentatsiyani 3 xil ko'rinishda chiqaring:
ls --help


# 4. "uygavazifa" nomli yangi papka yarating.
#    Keyin shu papkaga o‘ting va qolgan ishlarni shu yerda davom ettiring.
mkdir uygavazifa
cd uygavazifa

# 5. Papka ichida uchta matnli fayl yarating.
#    - Yordam: matn yozish uchun `echo "matn" > faylnomi.txt` yoki `echo "matn" >> faylnomi.txt` dan foydalanishingiz mumkin.
#    - 1-fayl: o‘zingiz haqida bir necha qatorli qisqa matn yozing

`echo "Salom mening ismim Asliddin , tanishganimdan xursandman.">>faylnoma.txt`


#    - 2-fayl: sevimli kitobingiz yoki film nomini yozing

 `echo "I dont like movies but I enjoy watching anime, and my most favorite anime is Berserk ">> movie.txt`


#    - 3-fayl: bugungi sanani yozing. `date` buyrug'idan foydalaning sanani ko'rsatish uchun.

date +"%Y-%m-%d" > today.txt


# 6. Papkada qanday fayllar mavjudligini ko‘rsating.

ls -la
# 7. Birinchi faylni nusxa ko‘chiring va yangi 'new_file.txt' nom bering.

 cp  faylnoma.txt new_file.txt


# 8. Ikkinchi fayl nomini 'renamed_file.txt' nomga o‘zgartiring.

mv movie.txt renamed_file.txt

# 9. Uchinchi faylni o‘chirib tashlang va yo‘qligini isbotlang.

rm today.txt 
ls today.txt

# 10. Birinchi fayldagi matnni oddiy ko‘rinishda va teskari ko‘rinishda ekranga chiqaring.

cat new_file.txt
rev new_file.txt


# 11. "sinov" nomli yangi papka yarating, keyin uni o‘chirib tashlang.

mkdir sinov
rm -r sinov

# 12. Topshiriq:
#     - "katta" nomli papka yarating.
 
 mkdir katta

#     - uning ichida "kichik" nomli papka yarating.

cd katta 
mkdir kichik

#     - "kichik" papka ichiga yangi bo'sh fayl yarating
cd kichik
touch myfile.txt

#     - butun "katta" papkani boshqa joyga nusxalab o‘tkazing.

 cp -r ~/uygavazifa/katta ~/work/


#     - keyin asl "katta" papkani ichidagi barcha narsasi bilan birga butunlay o‘chirib tashlang.
cd ~/uygavazifa/
rm -r katta 

#     - oxirida nusxa olingan joyda papka va fayl mavjudligini tekshiring.

cd ~/work/
ls katta 



echo  "Barcha topshiriqlar muvaffaqiyatli bajarildi!"

# ================================================
# Yakuniy topshiriq:
#    Skript oxirida ekranga shunday xabar chiqishi kerak(`echo` dan foydalaning):
#    "Barcha topshiriqlar muvaffaqiyatli bajarildi!"

