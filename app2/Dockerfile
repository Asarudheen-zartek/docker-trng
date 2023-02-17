# yup, python 3.11!
FROM python:3.11-slim


# copy the code
COPY . /app

# change our working directory to the djangoprojcet roo
WORKDIR /app

# create virtual env (notice the location?)
# update pip
# install requirements
RUN python -m venv /opt/venv && \
    /opt/venv/bin/python -m pip install pip --upgrade && \
    /opt/venv/bin/python -m pip install -r requirements.txt

# make our entrypoint.sh executable
RUN chmod +x config/entrypoint.sh

EXPOSE 9000
# execute our entrypoint.sh file
CMD ["./config/entrypoint.sh"]