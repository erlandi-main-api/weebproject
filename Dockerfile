# Using Python Slim-Buster
FROM biansepang/weebproject:buster

# Clone repo and prepare working directory
RUN git clone -b master https://github.com/BianSepang/WeebProject /home/weebproject/ \
    && chmod 777 /home/weebproject \
    && mkdir /home/weebproject/bin/

# Copies config.env (if exists)
COPY ./config.env ./config.env* /home/weebproject/

#setup screen
RUN apt-get install screen -y && apt-get install neofetch -y

# Setup Working Directory
WORKDIR /home/weebproject/

# Finalization
CMD echo done
CMD screen -dmS bot bash -c 'python3 -m userbot'

