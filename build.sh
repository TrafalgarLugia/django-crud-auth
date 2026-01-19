#!/user/bin/env bash
# exit on error
set -o errexit

# poetry install

python -m pip install --upgrade pip
pip install -r requirements.txt
pip install dj-database-url
pip install whitenoise
pip install psycopg2-binary
pip install gunicorn

python manage.py collectstatic --no-input
python manage.py migrate

