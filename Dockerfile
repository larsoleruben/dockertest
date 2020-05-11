FROM python:3

#remove this line for test
ENV MESSAGE Hello from constant world

#optional ask what this is doing
RUN groupadd --gid 1000 evil-ghost \
  && useradd --uid 1000 --gid evil-ghost --shell /bin/bash --create-home evil-ghost

USER evil-ghost

#remove this line for test
COPY ./programstuff/dockertest.py /home/evil-ghost/app/ 

WORKDIR /home/evil-ghost/app/
CMD [ "python", "dockertest.py" ]
