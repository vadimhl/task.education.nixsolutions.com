# 1 .Написать Linux-команды для следующих вопросов:

# Как посмотреть содержимое текстового файла?
less file.txt

# Что делает команда tail? Как посмотреть?
#     Print the last 10 lines of each FILE to standard output.
tail file.txt

# Как посмотреть текущую рабочую директорию?
pwd

# Как сменить рабочую директорию?
cd /home/vadim/python

# Как перейти в родительскую директорию?
cd ..

# Как вернуться в домашнюю директорию?
cd 
cd ~

# Как вывести список файлов в директории?
ls

# Как посмотреть время последнего изменения/доступа к файлу /tmp/test.txt?
stat /tmp/test.txt

# Как создать новую директорию test?
mkdir test

# Как создать пустой файл?
touch empty_file.txt

# Как создать файл /tmp/2mb.txt размером 2Mb?
dd if=/dev/zero of=/tmp/2mb.txt bs=1Mb count=2

# Как узнать тип файла?
file file.txt

# Как переименовать файл?
mv file.txt new_name.txt

# Как удалить файл/директорию?
rm /tmp/2mb.txt
# Как создать символическую/жесткую ссылку на файл/директорию?
ls -s new_name.txt symb_link.txt
ls new_name.txt hard_link.txt

# Как посмотреть размер файла?
stat file.txt

# Как как узнать размер директории?
du -hs dir_name

# Как сравнить два текстовых файла?
diff file1 file2
# Как посчитать количество строк в текстовом файле?
wc -l file.txt

# Как вывести на экран отсортированные строки текстового файла?
sort file.txt
