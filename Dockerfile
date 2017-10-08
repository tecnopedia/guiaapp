FROM node:4.8.0

WORKDIR /app

ADD package.json /app/package.json
RUN npm install

ADD . /app

ENV SERVER_URL http://nearme.quanlabs.com/parse
ENV PUBLIC_SERVER_URL http://nearme.quanlabs.com/parse
ENV APP_NAME NearmeApp

# Generate a ramdom App ID and Master Key here
# http://www.unit-conversion.info/texttools/random-string-generator/
# Don't forget to update the App ID in the mobile app.
# It should be the same for both app and cms.

ENV APP_ID myAppId
ENV MASTER_KEY myMasterKey

ENV MAILGUN_API_KEY REPLACE_WITH_YOUR_API_KEY
ENV MAILGUN_DOMAIN quanlabs.com
ENV MAILGUN_FROM_ADDRESS 'QuanLabs <info@quanlabs.com>'
ENV MAILGUN_TO_ADDRESS 'info@quanlabs.com'

# Uncomment the line below you want to use New Relic
# to monitor your web app.
# ENV NEW_RELIC_LICENSE_KEY REPLACE_WITH_YOUR_LICENSE_KEY 

CMD [ "npm", "start" ]

