FROM python:3.9

# set a directory for the app
WORKDIR /usr/src/app

# copy all the files to the container
COPY . .

# install dependencies
RUN pip install --no-cache-dir -r requirements.txt
# Successfully installed Flask-3.1.0 Jinja2-3.1.6 MarkupSafe-3.0.2 Werkzeug-3.1.3 blinker-1.9.0 click-8.1.8 colorama-0.4.6
# itsdangerous-2.2.0

# tell the port number the container should expose
EXPOSE 5000

# run the command
CMD ["python", "./app.py"]
