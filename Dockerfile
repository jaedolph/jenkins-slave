FROM docker.io/openshift/jenkins-slave-base-centos
RUN yum install gcc rpm-build rpm-devel rpmlint make python bash coreutils diffutils patch rpmdevtools
