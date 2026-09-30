#!/bin/bash
git init
mkdir lab0
cd lab0
touch lab0.sh
mkdir claude_monet
mkdir kostya_room
cd claude_monet
mkdir bar
cd bar
touch cocktail_menu
touch evening_orders
mkdir wine_cellar
mv wine_cellar ../
cd ..
cd wine_cellar
touch inventory
touch nagiev_wine
cd ..
mkdir storage
cd storage
touch supplier_note
cd ..
mkdir hall
cd hall
touch reservations
touch nastya_note
cd ..
mkdir office
cd office
touch vika_schedule
cd ../..
cd kostya_room 
touch kostya_diary
cd ..
mkdir empty_crates
touch bar_message 
echo "Фирменный коктейль от Кости
Лимонад для Насти без сахара
Классический напиток для постоянных гостей
Новый коктейль показать Вике вечером" > claude_monet/bar/cocktail_menu
echo "Столик два заказал три коктейля
Для банкета подготовить холодные напитки
Нагиев ждёт свой заказ у барной стойки
Последний заказ принимает Костя" > claude_monet/bar/evening_orders
echo "В погребе осталось двенадцать бутылок вина
Красное вино заказано для банкета
Белое вино подадут к рыбе Феди
Костя проверит остатки после закрытия" > claude_monet/wine_cellar/inventory
echo "Нагиев попросил оставить любимое вино
Бутылку перенесли на отдельную полку
Костя отвечает за специальный заказ
Подать вино после приезда владельца" > claude_monet/wine_cellar/nagiev_wine
echo "Поставщик привезёт напитки утром
Новая партия вина отмечена в накладной
Костя должен проверить количество коробок
О повреждениях сразу сообщить Вике" > claude_monet/storage/supplier_note
echo "Столик четыре забронирован на вечер
У окна ждут постоянных гостей
Большой стол подготовить для банкета
Вика утвердит план рассадки" > claude_monet/hall/reservations
echo "Настя передаёт заказы Косте лично
Гостям за пятым столиком нужна вода
На банкете напитки подают после закусок
Последний заказ проверить перед закрытием" > claude_monet/hall/nastya_note
echo "Вика проверяет бар до открытия
Днём проходит встреча с поставщиком
Перед банкетом нужно сверить заказы
После смены Костя сдаёт отчёт" > claude_monet/office/vika_schedule
echo "Костя открыл бар раньше обычного
Настя помогла расставить бокалы
Нагиев похвалил новый коктейль
Вечером друзья встретились после смены" > kostya_room/kostya_diary
echo "Бар открывается вместе с рестораном
Костя назначен ответственным за напитки
Вика ждёт отчёт об остатках
Нагиев приедет после восьми часов" > bar_message
chmod 755 claude_monet
cd /workspaces/debian/lab0/claude_monet/bar
chmod u=rwx,g=rx,o= .
ls -ld .
chmod 644 cocktail_menu
chmod u=rw,g=r,o= evening_orders
cd ..
chmod 750 wine_cellar
cd wine_cellar
chmod u=rw,g=rw,o= inventory
chmod 640 nagiev_wine
cd ..
chmod 750 storage
chmod u=rw,g=r,o=r /workspaces/debian/lab0/claude_monet/storage/supplier_note
chmod 755 hall
cd hall
chmod 644 reservations
chmod u=r,g=r,o=r nastya_note
cd ..
chmod u=rwx,g=rx,o= office
cd ..
chmod 750 kostya_room
chmod u=r,g=r,o= /workspaces/debian/lab0/kostya_room/kostya_diary
chmod u=rw,g=r,o=r bar_message
cp kostya_room/kostya_diary claude_monet/office/bartender_report
cp -r claude_monet/wine_cellar claude_monet/storage/cellar_backup
cd kostya_room
ln -s ../claude_monet/bar/evening_orders today_orders
cd ..
ln -s claude_monet/bar bar_entrance
ln bar_message claude_monet/bar/owner_message
cat claude_monet/hall/reservations claude_monet/hall/nastya_note > claude_monet/hall/service_plan правильно ли
cat claude_monet/storage/supplier_note >> claude_monet/wine_cellar/inventory
mv claude_monet/wine_cellar/nagiev_wine claude_monet/office/special_wine
ls -lR
ls -lR | grep "^-" | grep -v "report" | sort -k5,5rn | head -n5
grep -rih -E "костя|настя" . | grep -vi "отчёт" | sort -r | head -n 6
grep -rl "вино" claude_monet/wine_cellar claude_monet/storage/cellar_backup | wc -l
(head -n 1 claude_monet/bar/cocktail_menu; tail -n 1 claude_monet/bar/cocktail_menu; head -n 1 claude_mo
net/bar/evening_orders; tail -n 1 claude_monet/bar/evening_orders) | grep 
-iE "коктейл|заказ" | sort
(head -n 1 claude_monet/bar/cocktail_menu; tail -n 1 claude_monet/bar/cocktail_menu; head -n 1 claude_mo
net/bar/evening_orders; tail -n 1 claude_monet/bar/evening_orders) | grep 
-iE "коктейл|заказ" | sort
ls -liR | grep "^ *[0-9]\+ \+-[rwx-]* \+2" | sort -n
rm kostya_room/kostya_diary
y
rm -f kostya_room/today_orders
rm -f bar_entrance
rm bar_message
rm claude_monet/bar/owner_message
rm -f claude_monet/storage/supplier_note 
rmdir empty_crates
rm -r claude_monet/storage/cellar_backup

