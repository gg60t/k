FROM gg60t/k:slim-buster

#clonning repo 
RUN git clone https://github.com/gg60t/k.git /root/userbot
#working directory 
WORKDIR /root/userbot

# Install requirements
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","userbot"]
