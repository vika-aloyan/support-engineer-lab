# Linux Commands

## Навигация

### pwd
Показывает текущую директорию.

```bash
pwd
ls

Показывает содержимое директории.

ls -la
cd

Переход в другую директорию.

cd /var/log
Работа с файлами
cp

Копирование файла.

cp file.txt backup.txt
mv

Перемещение или переименование файла.

mv old.txt new.txt
rm

Удаление файла.

rm file.txt
Логи
tail

Показывает последние строки файла.

tail -n 50 application.log
tail -f

Позволяет наблюдать за логом в реальном времени.

tail -f application.log
grep

Поиск информации в логах.

grep "ERROR" application.log
Процессы
ps

Показывает запущенные процессы.

ps aux
top

Показывает процессы и использование ресурсов.

top
kill

Завершает процесс по его PID.

kill 1234
Диск
df

Показывает свободное место на дисках.

df -h
du

Показывает размер файлов и директорий.

du -sh /var/log/*
Сеть
ping

Проверяет доступность узла.

ping 8.8.8.8
ss

Показывает сетевые соединения и открытые порты.

ss -tulpn
curl

Используется для проверки HTTP/HTTPS-сервисов.

curl -I https://example.com
Сервисы
systemctl status

Проверяет состояние сервиса.

systemctl status nginx
systemctl restart

Перезапускает сервис.

systemctl restart nginx
