FROM python:2.7.15-alpine3.8

ENV DB=mysql \
    DB_Name=mediathekview \
    Host=mysql \
    User=admin \
    Password=password \
    PYTHONUNBUFFERED=1

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

WORKDIR /usr/src/app/plugin.video.mediathekview

CMD ./mvupdate $DB -H "$Host" -u "$User" -p "$Password" -d "$DB_Name" 