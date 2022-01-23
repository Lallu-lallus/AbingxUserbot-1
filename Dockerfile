# Using Python Slim-Buster
FROM vckyouuu/geezprojects:buster
#━━━━━ Userbot Telegram ━━━━━
#━━━━━ By Abing-Userbot ━━━━━

RUN git clone -b Abing https://github.com/nabilrmdaan/AbingxUserbot /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/nabilrmdaan/AbingxUserbot/Abing/requirements.txt

EXPOSE 80 443

# Finalization
CMD ["python3", "-m", "userbot"]
