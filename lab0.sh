#!/bin/bash
git init
mkdir lab0
cd lab0
mkdir claude_monet
mkdir archive
touch nagiev_call
cd claude_monet
mkdir owner_office
mkdir contracts
mkdir advertising
mkdir kitchen
mkdir chef_office
mkdir hall
cd owner_office
touch owner_order
touch expense_plan
echo "Дмитрий Нагиев требует подготовить ресторан к съёмке
Виктор Петрович должен представить новое меню
Вика отвечает за порядок в зале" > owner_order
echo "Новая вывеска требует согласования
Реклама ресторана оплачивается владельцем
Расходы на банкет проверить отдельно" > expense_plan
cd ..
cd contracts
touch supplier_contract
touch concert_contract
echo "Поставщик привозит продукты утром
Шеф лично проверяет качество мяса
Оплата производится после приёмки" > supplier_contract
echo "Музыканты выступают в пятницу вечером
Костя готовит напитки для артистов
Вика согласует время начала программы" > concert_contract
cd ..
cd advertising
touch promo_plan
echo 'Реклама показывает кухню и главный зал
Нагиев появляется в финале рекламного ролика
Баринов отказывается повторять текст дважды' > promo_plan
cd ..
cd kitchen
touch chef_order
touch menu_prices
echo "Приготовить фирменное блюдо к восьми часам
Сеня и Федя отвечают за горячий цех
Лёва проверяет выдачу каждого блюда" > chef_order
echo "Утиная ножка 850
Луковый суп 430
Мильфей 520
Стейк от шефа 1100" > menu_prices
cd ..
cd chef_office
touch barinov_reply
echo "Баринов согласен обновить меню
Баринов не согласен сниматься в рекламе
Все решения по кухне принимает шеф" > barinov_reply
cd ..
cd hall
touch vip_guests
echo "За первым столом сидят актёры
Для Нагиева оставить место у сцены
Постоянным гостям подать десерт от Луи" > vip_guests
cd ..
cd ..
echo "Нагиев позвонил Вике утром
Владелец приедет после открытия
Отчёт о расходах должен быть готов" > nagiev_call
chmod 755 claude_monet
chmod u=rwx,g=rx,o= claude_monet/owner_office
chmod 640 claude_monet/owner_office/owner_order
chmod u=rw,g=r,o= claude_monet/owner_office/expense_plan
chmod 750 claude_monet/contracts
chmod u=rw,g=r,o= claude_monet/contracts/supplier_contract
chmod 640 claude_monet/contracts/concert_contract
chmod u=rwx,g=rx,o= claude_monet/advertising
chmod 644 claude_monet/advertising/promo_plan
chmod u=rwx,g=rx,o= claude_monet/kitchen
chmod 640 claude_monet/kitchen/chef_order
chmod u=rw,g=r,o=r claude_monet/kitchen/menu_prices
chmod 750 claude_monet/chef_office
chmod u=rw,g=r,o= claude_monet/chef_office/barinov_reply
chmod 755 claude_monet/hall
chmod u=rw,g=r,o=r claude_monet/hall/vip_guests
chmod u=rwx,g=rx,o= archive
chmod 640 nagiev_call
git status
git add . ../lab0.sh
git commit -m "A directory and file tree with content has been created, and file and directory permissions have been set"
git push
cp nagiev_call claude_monet/owner_office/nagiev_call_copy
cp -r claude_monet/advertising claude_monet/owner_office/advertising_backup
ln -s claude_monet/contracts/supplier_contract owner_contract
ln -s ../hall claude_monet/owner_office/hall_access
ln claude_monet/contracts/supplier_contract claude_monet/contracts/supplier_duplicate
cat claude_monet/owner_office/owner_order claude_monet/chef_office/barinov_reply > claude_monet/owner_office/meeting_notes
cat claude_monet/kitchen/chef_order >> nagiev_call
mv claude_monet/advertising/promo_plan archive/promo_final
