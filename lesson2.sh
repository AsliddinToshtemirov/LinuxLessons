#!/bin/bash

# 2-dars uyga vazifasi
# "Meta Script" - BASH topshirig'i
# Ushbu skript sizga boshqa bash skript yaratishni o‘rgatadi.
# Bu mashq redirection, piping va file permissions bo‘yicha bilimlarni mustahkamlaydi.

# 1. Yangi bash skript faylini yarating: generated_script.sh
cat << 'EOF' > generated_script.sh

#!/bin/bash

# 2. generated_script.sh ichida quyidagi vazifalarni bajaruvchi buyruqlar bo‘lsin:
#    - Yangi matn faylini yaratish: myfile.txt
#    - myfile.txt fayliga yana ikki qatorda matn qo‘shish.
cat > myfile.txt <<EOT
During the test process we found an error that stopped the program.
The monitoring tool alerted us of an error in the service.
We added extra logs to track the error more easily.
Finally, the last error was resolved after restarting the system.
No new error has been found since then.
EOT
#    - myfile.txt ichidan "error" so‘zini o‘z ichiga olgan satrlarni qidirish.
#      grep va piping ishlating.
cat myfile.txt | grep  "error" 
#    - myfile.txt faylini sort buyrug‘i yordamida saralash va sorted_file.txt ga yozish.
cat myfile.txt | sort > sorted_file.txt
#    - sorted_file.txt fayliga faqat o‘qish huquqini berish.
chmod +r sorted_file.txt
# 3. generated_script.sh fayliga bajarish huquqini berish.
EOF
chmod +x generated_script.sh

# 4. generated_script.sh faylini bajarish.
./generated_script.sh
# 5. generated_script.sh bajarilgandan so‘ng, myfile.txt va sorted_file.txt fayllari yaratilganini tekshirish

if [ -e "myfile.txt" ] && [ -e "sorted_file.txt" ]; then
    echo "Fayllar mavjud"
else
    echo "Fayllar mavjud emas."
fi



#Oson ishlash uchun 
#
#tmux:
#1. Ctrl+b % - vertikal ikkiga buladi
#2. Ctrl+b chap yoki o'ng strelka - chapga yoki o'nga o'tkazadi
#3. Ctrl+b " - gorizontal ikkiga buladi
#
#Foydali komandalar:
#echo script.sh | entr bash script.sh - bash script uzgarsa avtomatik tarzda scriptni ishga tushiradi
#watch -n cat generated_script.sh - har 3 sekundda faylni ko'rsatib turadi
