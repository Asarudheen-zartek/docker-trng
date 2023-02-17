# yup, python 3.11!
FROM python:3.11-slim


# copy the code
COPY ./app ./app

# change our working directory to the djangoprojcet roo
WORKDIR /app

# create virtual env (notice the location?)
# update pip
# install requirements
RUN python -m venv /opt/venv && \
    /opt/venv/bin/python -m pip install pip --upgrade && \
    /opt/venv/bin/python -m pip install -r requirements.txt


EXPOSE 8008

RUN chmod +x config/entrypoint.sh
# execute our entrypoint.sh file
CMD ["./config/entrypoint.sh"]