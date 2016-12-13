LABEL Description="PerfkitBenchmarker base image" \

FROM python:2.7

ADD . /root/PerfkitBenchmarker
WORKDIR /root/PerfkitBenchmarker

# install the PerfkitBenchmarker dependencies

RUN && pip install colorama<=0.3.3 \
    && pip install -r requirements.txt \
    && pip install -r requirements-testing.txt \
    && pip install -r perfkitbenchmarker/providers/alicloud/requirements.txt \
    && chmod a+x pkb.py

