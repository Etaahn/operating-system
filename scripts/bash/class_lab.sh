ps aux | grep nginx
pkill -f my_script.sh
nohup ./backup.sh &
pgrep sshd
pstree -p
lsof -p 1234
systemctl status docker
nice -n 19 ./heavy_calc.sh
cp -r /var/www/html /backup/html
cp -a secret.key /tmp/
rsync -av --update src/ dest/
cp -u dir1/* dir2/
scp app.conf user@192.168.1.50:/etc/
tar -czvf var_log.tar.gz /var/log
find /home -type f -size +500M
find /var/log -type f -mtime -7
find /tmp -type f -user jenkins
find /data -type d -empty -delete
find . -type f -perm 777
find . -type f -name "*.jpg" -exec cp {} /images/ \;
grep -Eo '[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}' contacts.txt
grep -i "error" syslog
grep '^root' config.ini
grep -v '192\.168\.1\.1' access.log
grep -R "TODO" .
sed -i 's/localhost/127.0.0.1/g' hosts.txt
grep -v '^#' config.conf
grep -E '([0-9]{1,3}\.){3}[0-9]{1,3}' file.txt
ps aux | grep '^root'
find . -name "*.log" -exec grep -l "Critical" {} \;
