FROM jenkins
USER root
RUN apt-get update && apt-get install -y python-pip python-dev
RUN pip install virtualenvwrapper
USER jenkins
RUN bash -c 'source /usr/local/bin/virtualenvwrapper.sh && mkvirtualenv openstack && workon openstack && pip install python-openstackclient'
