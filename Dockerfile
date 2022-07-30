FROM python:3.9

ENV HOME /app
WORKDIR $HOME

COPY requirements.txt .
RUN python3 -m pip install -r requirements.txt

# COPY main.py .
# COPY entrypoint.sh .

COPY . .

# EXPOSE 8080  Уберем чтобы добавить в docker-compose

CMD ["sh", "entrypoint.sh"]