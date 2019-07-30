FROM registry.access.redhat.com/openshift3/jenkins-slave-base-rhel7 
RUN yum -y install gcc rpm-build rpm-devel rpmlint make python bash coreutils diffutils patch rpmdevtools
RUN yum clean all -y
RUN cd /tmp/
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python get-pip.py

USER 1001
RUN mkdir /home/jenkins/.pip
RUN echo "alias test='ps -ef'" >> /home/jenkins/.bashrc
RUN printf "\
[global] \n\
index-url = https://test.pypi.org\
" > /home/jenkins/.pip/pip.conf
