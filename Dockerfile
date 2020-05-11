FROM python:3

ENV MESSAGE Hello from constant world

RUN groupadd --gid 1000 evil-ghost \
  && useradd --uid 1000 --gid evil-ghost --shell /bin/bash --create-home evil-ghost

USER evil-ghost

COPY ./programstuff/dockertest.py /home/evil-ghost/app/
WORKDIR /home/evil-ghost/app/

CMD [ "python", "dockertest.py" ]
