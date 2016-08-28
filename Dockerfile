FROM ubuntu:14.04
RUN apt-get update && apt-get -y install  \
          python-pip  \
          python2.7-dev  \
          libssl-dev  \
          libffi-dev  \
          libpython2.7-dev  \
          libyaml-dev

RUN pip install --upgrade setuptools
RUN pip install --upgrade pip

# Install ansible
RUN pip install httplib2 six ansible==2.1.1.0
