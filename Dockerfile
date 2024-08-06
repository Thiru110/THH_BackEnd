FROM python:3.11

WORKDIR /app

COPY requirements.txt requirements.txt

# Upgrade pip and setuptools
RUN pip install --upgrade pip setuptools

# Install dependencies
RUN pip install -r requirements.txt

COPY . .

EXPOSE 4000

CMD [ "python", "app.py" ]
