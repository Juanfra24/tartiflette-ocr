FROM floydhub/tensorflow:2.1-gpu.cuda10cudnn7-py3_aws.54

RUN apt-get install cmake

RUN pip install --user pipenv


ENV PYTHONPATH=/usr/src/app/
ENV PATH="$PATH:/root/.local/bin"

WORKDIR /usr/src/app

COPY Pipfile /usr/src/app/

RUN pipenv install

COPY . /usr/src/app/

EXPOSE 8080

CMD ["pipenv", "run", "python", "-m", "recipes_manager"]