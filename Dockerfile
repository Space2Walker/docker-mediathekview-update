FROM space2walker/alpine-git as builder

WORKDIR /usr/src/app

RUN  git clone https://github.com/mediathekview/plugin.video.mediathekview.git

FROM python:2.7.15-alpine3.6

WORKDIR /usr/src/app

COPY --from=builder /usr/src/app/plugin.video.mediathekview /usr/src/app/plugin.video.mediathekview

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

WORKDIR /usr/src/app/plugin.video.mediathekview

ENV DB=mysql \
    DB_Name=mediathekview \
    Host=mysql \
    User=admin \
    Password=password \
    PYTHONUNBUFFERED=1

CMD ./mvupdate $DB -H "$Host" -u "$User" -p "$Password" -d "$DB_Name"
