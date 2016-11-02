FROM mexx/ansible-2.2:latest

ENV DIRPATH /ansible
ENV AWS_ACCESS_KEY_ID !!!change_me!!!
ENV AWS_SECRET_ACCESS_KEY !!!change_me!!!

RUN mkdir $DIRPATH
WORKDIR $DIRPATH

ENTRYPOINT ["ansible-playbook"]
