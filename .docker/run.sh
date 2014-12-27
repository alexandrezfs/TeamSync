service mysql start && service apache2 start
mysql -uroot -pazerty -e "create database teamsync"
python /code/manage.py migrate
python /code/manage.py runserver 0.0.0.0:8000
