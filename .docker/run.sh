service mysql start && service apache2 start
mysql -uroot -pazerty -e "create database teamsync"
python /code/manage.py makemigrations teamSync
python /code/manage.py sqlmigrate teamSync 0001
python /code/manage.py migrate
echo "from django.contrib.auth.models import User; User.objects.create_superuser('admin', 'admin@example.com', 'azerty')" | python /code/manage.py shell
python /code/manage.py runserver 0.0.0.0:8000
