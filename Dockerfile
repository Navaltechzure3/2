FROM python
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
COPY launch.py /app
ENTRYPOINT [ "python" ]
CMD [ "/app/launch.py" ]